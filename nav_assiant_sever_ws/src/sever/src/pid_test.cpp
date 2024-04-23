#include <ros/ros.h>
#include <tf/tf.h>
#include <ros/spinner.h>
#include <tf2_ros/buffer.h>
#include <geometry_msgs/Twist.h>
#include <tf2_ros/transform_listener.h>
#include <actionlib/client/simple_action_client.h>

#include <photinia_msgs/MoveToGoalAction.h>
#include <photinia_msgs/PIDParams_srv.h>
#include <dg_msgs/ChassisState.h>
#include <dg_msgs/Localization3D.h>
#include "tcp_connect.h"

#include <thread>
#include <mutex>
#include <condition_variable>

#include <nlohmann/json.hpp>

// #ifndef USE_TURTLE_TEST
// #define USE_TURTLE_TEST
// #endif

using namespace nlohmann;

bool GetCurrentPose(tf2_ros::Buffer &tf ,geometry_msgs::PoseStamped &current_pose){
    geometry_msgs::TransformStamped transformStamped;
    try{
        #ifdef USE_TURTLE_TEST
        transformStamped = tf.lookupTransform("world", "turtle1", ros::Time(0));
        #else
        transformStamped = tf.lookupTransform("map", "motion_link", ros::Time(0));
        #endif
    } catch (tf2::TransformException &ex) {
        ROS_WARN("[GetCurrentPose]: %s", ex.what());
        return false;        }
    current_pose.header.stamp = transformStamped.header.stamp;
    current_pose.pose.position.x = transformStamped.transform.translation.x;
    current_pose.pose.position.y = transformStamped.transform.translation.y;
    current_pose.pose.position.z = transformStamped.transform.translation.z;
    current_pose.pose.orientation = transformStamped.transform.rotation;
    return true;
}

class QuadTest{
public:
    QuadTest(tf2_ros::Buffer &tf):tf_(tf){
        tcp_server_ = std::make_shared<TCPServer>(4042, std::bind(&QuadTest::DealDataCallback,this,std::placeholders::_1));
        tcp_server_->AsynRun();

        ros::NodeHandle public_nh;
        pid_client_ = public_nh.serviceClient<photinia_msgs::PIDParams_srv>("/pid_params_srv");
        chassis_state_sub_ = public_nh.subscribe<dg_msgs::ChassisState>("/chassis_state_hardware", 1, &QuadTest::RecvBatteryCallback, this);   //TODO
        #ifdef USE_TURTLE_TEST
        speed_sub_ = public_nh.subscribe<geometry_msgs::Twist>("/turtle1/cmd_vel", 1,&QuadTest::RecvSpeedCallback, this);   //TODO
        #else
        speed_sub_ = public_nh.subscribe<geometry_msgs::Twist>("/cmd_vel", 1,&QuadTest::RecvSpeedCallback, this);   //TODO
        #endif
        location_sub_ = public_nh.subscribe<dg_msgs::Localization3DConstPtr>("/localization_3d", 1, &QuadTest::RecvConfidenceCallback, this);
        move_to_goal_ac_ = std::make_shared<actionlib::SimpleActionClient<photinia_msgs::MoveToGoalAction>>("move_to_goal", true);
        ui_feedback_thread_ = std::thread(std::bind(&QuadTest::SendLocationToUi,this));
        brake_test_thread_ = std::thread(std::bind(&QuadTest::StartTest,this));
    }
    // ~QuadTest(){
    // // {  
    // //     ROS_WARN("~QuadTest");
    // //     std::unique_lock<std::mutex> lock_quit(quit_mtx_);
    // //     quit_signal_ = true;
    // //     lock_quit.unlock();
    // // }
    // // {  
    // //     std::unique_lock<std::mutex> lock_quit(quit1_mtx_);
    // //     quit1_signal_ = true;
    // //     lock_quit.unlock();
    // // }
    //     // ui_feedback_thread_.join();
    //     // brake_test_thread_.join();
    // }
    
private:
tf2_ros::Buffer &tf_;
ros::ServiceClient pid_client_;
ros::Subscriber chassis_state_sub_;
ros::Subscriber speed_sub_;
ros::Subscriber location_sub_;
std::shared_ptr<TCPServer> tcp_server_; //connection with ui
std::shared_ptr<actionlib::SimpleActionClient<photinia_msgs::MoveToGoalAction>>  move_to_goal_ac_;

std::thread ui_feedback_thread_;
std::mutex chassis_state_mtx_;
std::condition_variable chassis_state_cv_;
bool awake_signal_ = false;
bool quit_signal_ = false;
std::mutex quit_mtx_;

std::thread brake_test_thread_;
std::mutex brake_mtx_;
std::condition_variable brake_cv_;
bool awake1_signal_ = false;
bool quit1_signal_ = false;
std::mutex quit1_mtx_;

json chassis_state_;
double test_distance_;

void StartTest(){
    while(ros::ok()){
        // std::unique_lock<std::mutex> lock_quit(quit1_mtx_);
        // if(true == quit1_signal_){
        //     ROS_INFO("Brake Test thread quitd!");
        //     return;
        // }
        // lock_quit.unlock();

        std::unique_lock<std::mutex> lock(brake_mtx_);
        brake_cv_.wait(lock, [this](){return awake1_signal_;});
        awake1_signal_ = false;
        try{
            json doc;
            ROS_INFO("[StartTest]: waitting move_base Server");
            move_to_goal_ac_->waitForServer(); //wait move_base action server start
            ROS_INFO("[StartTest]: started move_base Server");
            geometry_msgs::PoseStamped current_pose;
            if(!GetCurrentPose(tf_, current_pose)){
                ROS_ERROR("[StartTest]: current_pose is not avaliable!");
                doc["response_type"] = "error";
                if (tcp_server_->GetSessionNum() > 0) {
                    doc["detail"] = "[StartTest]: current_pose is not avaliable!";
                    tcp_server_->AsynSend(tcp_server_->GetSession(0), doc.dump());  //把自动计算的制动距离和制动时的速度打包发出来
                }
                else ROS_ERROR("[StartTest]: current_pose is not avaliable; None connection!");
                continue;
            }
            tf::Quaternion cur_orientation;
            photinia_msgs::MoveToGoalGoal goal;
            tf::quaternionMsgToTF(current_pose.pose.orientation, cur_orientation);
            double cur_yaw =  tf::getYaw(cur_orientation);
            goal.target_pose.pose.position.x =  current_pose.pose.position.x + test_distance_*cos(cur_yaw);  //前进test_distance米
            goal.target_pose.pose.position.y =  current_pose.pose.position.y + test_distance_*sin(cur_yaw);
            goal.target_pose.pose.position.z = current_pose.pose.position.z;
            goal.target_pose.pose.orientation = current_pose.pose.orientation;   //TODO
            // goal.target_pose.pose.orientation = tf::createQuaternionMsgFromYaw(3.1456926/2);
            goal.motion_model = 1;//TODO 直行模式
            // goal.motion_model = 3;//TODO 原地旋转


            move_to_goal_ac_->sendGoal(goal);  //goal为制动时的位姿
            move_to_goal_ac_->waitForResult();
            if(move_to_goal_ac_->getState() == actionlib::SimpleClientGoalState::SUCCEEDED){
                double auto_brake_distance = move_to_goal_ac_->getResult()->brake_distance;
                auto brake_vel = move_to_goal_ac_->getResult()->brake_vel;
                //回应UI
                json doc;
                doc["response_type"] = "finish_test";
                doc["auto_brake_distance"] = auto_brake_distance;
                doc["linear_velocity"] = {brake_vel.linear.x,brake_vel.linear.y,brake_vel.linear.z};
                doc["angular_velocity"] =  {brake_vel.angular.x,brake_vel.angular.y,brake_vel.angular.z};
                if (tcp_server_->GetSessionNum() > 0) {
                    tcp_server_->AsynSend(tcp_server_->GetSession(0), doc.dump());  //把自动计算的制动距离和制动时的速度打包发出来
                    ROS_INFO("[StartTest]: auto caculate Brake disatance %fm",auto_brake_distance);
                }
            }
        }
        catch(const std::out_of_range &e){
            ROS_ERROR("[StartTest]: %s",e.what());
            json doc;
            doc["response_type"] = "error";
            if (tcp_server_->GetSessionNum() > 0) {
                doc["detail"] = "[StartTest]: "+ std::string(e.what());
                tcp_server_->AsynSend(tcp_server_->GetSession(0), doc.dump());  //把自动计算的制动距离和制动时的速度打包发出来
            }
            else ROS_ERROR("[StartTest]: current_pose is not avaliable; None connection!");
            continue;
        }
        awake1_signal_ = false;
        lock.unlock();
    }
}

void SetParams(const json &doc){
    json response;
    response["response_type"] = "received_params";
    if(!pid_client_.waitForExistence(ros::Duration(5))) {  //wait 5 secs for PID Server
        ROS_ERROR("[SetParams]: PID server not started!");
        response["state"] = "failed";
        response["detail"] = "[SetParams]: PID server not started!";
        if (tcp_server_->GetSessionNum() > 0) {
            tcp_server_->AsynSend(tcp_server_->GetSession(0), response.dump());   //回应UI
        }
        return;
    }
   try{
        photinia_msgs::PIDParams_srv srv;
        srv.request.time = std::to_string(ros::Time::now().toSec());  
        test_distance_ = doc.at("test_distance").get<double>();  //设置测试距离
        srv.request.max_linear = doc.at("max_v").get<double>();
        srv.request.max_w = doc.at("max_w").get<double>();
        srv.request.linear_p = doc.at("linear_pid").at(0).get<double>();
        srv.request.linear_i = doc.at("linear_pid").at(2).get<double>();
        srv.request.angle_p = doc.at("angular_pid").at(0).get<double>();
        srv.request.angle_i = doc.at("angular_pid").at(1).get<double>();
        srv.request.angle_d = doc.at("angular_pid").at(2).get<double>();
        if(true == pid_client_.call(srv) && true == srv.response.is_success){
            ROS_INFO("[SetParams]: Updated pid params, successfully!");
        }
        else{
            ROS_ERROR("[SetParams]: PID params is failed!");
        }
    }
    catch(const std::out_of_range &e){
        ROS_ERROR("[SetParams]: %s",e.what());
        response["state"] = "failed";
        response["detail"] = "[SetParams]: "+std::string(e.what());
        return;
    }
    response["state"] = "successful";
    response["detail"] = "[SetParams]: Updated pid params, successfully!";
    if (tcp_server_->GetSessionNum() > 0) {
        tcp_server_->AsynSend(tcp_server_->GetSession(0), response.dump());  //回应UI
    }
}

void SendLocationToUi(){
    while(ros::ok()){
        // std::unique_lock<std::mutex> lock_quit(quit_mtx_);
        // if(true == quit_signal_)return;
        // lock_quit.unlock();
        std::unique_lock<std::mutex> lock(chassis_state_mtx_);
        chassis_state_cv_.wait(lock,[this](){return this->awake_signal_;});

        #ifdef USE_TURTLE_TEST
        chassis_state_["battery"] = 98;
        chassis_state_["ping"] = 466;
        chassis_state_["confidence"] = 0.87;
        #endif

        geometry_msgs::PoseStamped current_pose;
        if(!GetCurrentPose(tf_, current_pose))continue;
        chassis_state_["time_stamped"] = std::to_string(ros::Time::now().toSec());  //时间戳S
        chassis_state_["response_type"] = "realtime_location";
        chassis_state_["localization"] = {current_pose.pose.position.x,current_pose.pose.position.y,current_pose.pose.position.z};
        chassis_state_["Quaternion"] = {current_pose.pose.orientation.x,current_pose.pose.orientation.y,current_pose.pose.orientation.z, current_pose.pose.orientation.w};
        ROS_WARN_COND(!chassis_state_.contains("confidence"),"[SendLocationToUi]: confidence empty!");

        if (tcp_server_->GetSessionNum() > 0) {
            tcp_server_->AsynSend(tcp_server_->GetSession(0), chassis_state_.dump());
        }
        else ROS_ERROR("[SendLocationToUi]: None connection.");
        awake_signal_ = false;
        lock.unlock();
    }
}

void RecvBatteryCallback(dg_msgs::ChassisState chassis_state){
    json js;
    try{
        js = json::parse(chassis_state.chassis_state_json.c_str());
        if(!js.is_object()){
        return;
        }
        chassis_state_["battery"] = js.at("battery_level").get<double>();
        chassis_state_["ping"] = 466;
    }
    catch(const std::out_of_range &e){
        ROS_WARN("[RecvBatteryCallback]: %s",e.what());
        chassis_state_["battery"] = -1;
    }
}

void RecvConfidenceCallback(const dg_msgs::Localization3DConstPtr localization_3d) {
  chassis_state_["confidence"] = localization_3d->confidence;
}

void RecvSpeedCallback(geometry_msgs::Twist twist){
    chassis_state_["linear_velocity"] = {twist.linear.x,twist.linear.y,twist.linear.z};
    chassis_state_["angular_velocity"] = {twist.angular.x, twist.angular.y, twist.angular.z};
}

void DealDataCallback(const std::string &Msg){
    try{
        json doc = json::parse(Msg);
        if(!doc.is_object()){
        return;
        }
        std::string require_type = doc.at("require_type").get<std::string>();
        if (require_type == "send_params") {
            std::unique_lock<std::mutex> lock(brake_mtx_,std::defer_lock);
            if(!lock.try_lock()){
                ROS_WARN("[DealDataCallback]: Existed test task!!");
                return;
            }
            ROS_INFO("[DealDataCallback]: Prepare SetParams");
            SetParams(doc);
        } 

        if (require_type == "start_to_test") {
            std::unique_lock<std::mutex> lock(brake_mtx_,std::defer_lock);
            if(!lock.try_lock()){
                ROS_WARN("[DealDataCallback]: Existed test task!!");
                return;
            }
            ROS_INFO("[DealDataCallback]: Prepare StartTest");
            awake1_signal_ = true;
            brake_cv_.notify_all();
            lock.unlock();
        } 

        if (require_type == "realtime_location") {
            std::unique_lock<std::mutex> lock(chassis_state_mtx_);
            awake_signal_ = true;
            chassis_state_cv_.notify_all();
            lock.unlock();
        }
    }
    catch(const json::parse_error &e){
        ROS_WARN("[DealDataCallback]: %s",e.what());
        return;
    }
    catch(const std::out_of_range &e){
        ROS_WARN("[DealDataCallback]: %s",e.what());
        return;
    }
}
};//class end

int main(int argc, char **argv){
    ros::init(argc, argv, "pid_server");
    tf2_ros::Buffer buffer(ros::Duration(10));
    tf2_ros::TransformListener tf(buffer);

    QuadTest quad_brake_test(buffer);
    ROS_WARN("spin_begin---------------------");
    
    ros::spin();
    return 0;
}




