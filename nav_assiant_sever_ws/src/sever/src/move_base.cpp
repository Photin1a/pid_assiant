#include <cmath>
#include <dg_msgs/Localization3D.h>
#include <geometry_msgs/Twist.h>
#include <ros/ros.h>
#include <ros/spinner.h>
#include "pid_controller.h"
#include <csignal>
#include <photinia_msgs/MoveToGoalAction.h>
#include <actionlib/server/simple_action_server.h>
#include <thread>
#include <mutex>
#include <condition_variable>
#include <tf2_ros/transform_listener.h>
#include <random>
#include <nlohmann/json.hpp>
using namespace nlohmann;

// #ifndef USE_TURTLE_TEST
// #define USE_TURTLE_TEST
// #endif

//gassian noise
double GassNoise(double mean, double stddev){
    std::default_random_engine random;
    std::normal_distribution<double> gassian(mean, stddev);
    return gassian(random);
}

bool GetCurrentPose(tf2_ros::Buffer &tf ,geometry_msgs::PoseStamped &current_pose){
    geometry_msgs::TransformStamped transformStamped;
    try{
        #ifdef USE_TURTLE_TEST
        transformStamped = tf.lookupTransform("world", "turtle1", ros::Time(0));
        auto noise =  GassNoise(0,0.02);  //仿真中加噪声
        transformStamped.transform.translation.x += noise;  //mean, stddev = 0.01
        transformStamped.transform.translation.y += noise; 
        transformStamped.transform.translation.z += noise; 
        #else
        transformStamped = tf.lookupTransform("map", "motion_link", ros::Time(0));
        #endif
    } catch (tf2::TransformException &ex) {
        ROS_WARN("[GetCurrentPose]: %s", ex.what());
        return false;        
    }
    current_pose.header.stamp = transformStamped.header.stamp;
    current_pose.pose.position.x = transformStamped.transform.translation.x;
    current_pose.pose.position.y = transformStamped.transform.translation.y;
    current_pose.pose.position.z = transformStamped.transform.translation.z;
    current_pose.pose.orientation = transformStamped.transform.rotation;
    return true;
}

enum MOTION_MODEL{
    LINE_MOVE,
    PARALL_MOVE,
    ROTATE_MOVE,
    FOURSTEER_MOVE
};
class SimpleQuadSteerController : BaseLocalPlanner{
public:
    SimpleQuadSteerController():tf_(nullptr){}
    void SetMoveModel(MOTION_MODEL motion_model){
        motion_model_ = motion_model;
        GetPostionPid().ReWarmStart();
        GetYawPid().ReWarmStart();
    }
    
public:
    bool ComputeVelocityCommands(geometry_msgs::Twist &cmd_vel) override{    
        SetZeroVel(cmd_vel);
        if(!GetCurrentPose(*tf_ ,current_pose_))return false;
        double linear = postion_pid_controller_.GetOutput(CalculateDistError2D(target_pose_, current_pose_));
        double angular = yaw_pid_controller_.GetOutput(CalculateAngleError(target_pose_, current_pose_));
        switch (motion_model_){
        case MOTION_MODEL::LINE_MOVE: //直行
            cmd_vel.linear.x = linear;
            cmd_vel.angular.z = angular;
            break;
        case MOTION_MODEL::PARALL_MOVE: //平移
            cmd_vel.linear.y = linear;
            break;
        case MOTION_MODEL::ROTATE_MOVE: //原地旋转
            cmd_vel.angular.z = angular;
            break;
        case MOTION_MODEL::FOURSTEER_MOVE:  //自由模式   暂未开发
        break;
        default:
            break;
        }
        return true;
    }

    bool IsPositionReached() override {
        if(!GetCurrentPose(*tf_ ,current_pose_))return false;
        #ifdef USE_TURTLE_TEST
        return CalculateDistError2D(target_pose_, current_pose_) < 1e-3?true:false;  //0.1cm
        #else
        // return CalculateDistError(target_pose_, current_pose_) < 10e-2?true:false;  //10cm
        auto err = CalculateDistError2D(target_pose_, current_pose_);
        ROS_WARN("[IsPositionReached]: error: %f, toler: %f,",err,6e-2);
        return   err< 100e-2?true:false;  //1m
        #endif
    }

    bool IsOrientationtionReached()override{
        if(!GetCurrentPose(*tf_ ,current_pose_))return false;
        return std::abs(CalculateAngleError(target_pose_, current_pose_)) < 1e-3?true:false;
    }

    bool IsGoalReached() override{
        return IsPositionReached()&&IsOrientationtionReached();
    }
    bool SetPlan(std::vector<geometry_msgs::PoseStamped>  *global_plan) override{
        global_plan_ = global_plan;
        if(global_plan_->size()>0){
            target_pose_ = global_plan_->at(0);    //TODO
            return true;
        }
        else {
            return false;
        }
    }
    void Initialize(const std::string &name, tf2_ros::Buffer *tf) override{
        ros::NodeHandle public_nh;
        tf_ = tf;
        #ifdef USE_TURTLE_TEST
        chassis_state_sub_ = public_nh.subscribe<turtlesim::PoseConstPtr>("/turtle1/pose",1,&SimpleQuadSteerController::TurtleChassisCallback,this);
        #else
        chassis_state_sub_ = public_nh.subscribe<dg_msgs::ChassisStateConstPtr>("/chassis_state_hardware",1,&SimpleQuadSteerController::ChassisCallback,this);
        #endif
        set_pid_params_srv_ = public_nh.advertiseService("/pid_params_srv", &SimpleQuadSteerController::SetPIDParamsCallback,this);
        GetPostionPid().SetLimitOut(0, 1).SetLimitSum(100);
        GetYawPid().SetLimitOut(0, 1).SetLimitSum(100);
    }  
    bool IsStatic() override{
        GetCurrentPose(*tf_, current_pose_);
        double time_diff = (ros::Time::now() - current_pose_.header.stamp).toSec();
        if(std::abs(time_diff) > 20*1e-3){  // >20ms
            ROS_WARN("[IsStatic]: The current_pose update has beyond %.3f ms.", time_diff*1000);
        }
        auto vel = std::pow(std::pow(current_vel_.twist.linear.x,2)+std::pow(current_vel_.twist.linear.y,2)+std::pow(current_vel_.twist.linear.z,2),0.5);
        auto ang = std::pow(std::pow(current_vel_.twist.angular.x,2)+std::pow(current_vel_.twist.angular.y,2)+std::pow(current_vel_.twist.angular.z,2),0.5);
        ROS_WARN("[IsStatic]: time: %f  obj:0.001 , current_vel: %f current_ang: %f", current_vel_.header.stamp.toSec(),vel, ang);
        if(1e-3 > vel &&1e-3 > ang){
            return true;
        }
        else return false;
    }

//工具
private:
    double CalculateDistError(const geometry_msgs::PoseStamped &pose_target, const geometry_msgs::PoseStamped &pose_current){
        auto dx = pose_target.pose.position.x - pose_current.pose.position.x;
        auto dy = pose_target.pose.position.y - pose_current.pose.position.y;
        auto dz = pose_target.pose.position.z - pose_current.pose.position.z;
        return pow(pow(dx,2)+pow(dy,2)+pow(dz,2),0.5);
    }

    double CalculateDistError2D(const geometry_msgs::PoseStamped &pose_target, const geometry_msgs::PoseStamped &pose_current){
        auto dx = pose_target.pose.position.x - pose_current.pose.position.x;
        auto dy = pose_target.pose.position.y - pose_current.pose.position.y;
        ROS_WARN("(dx,dy):(%f,%f)",dx,dy);
        return pow(pow(dx,2)+pow(dy,2),0.5);
    }

    double CalculateAngleError(const geometry_msgs::PoseStamped &pose_target, const geometry_msgs::PoseStamped &pose_current){
        auto yaw_error = tf::getYaw(pose_target.pose.orientation) - tf::getYaw(pose_current.pose.orientation);
        auto normalized_yaw_error = atan2(sin(yaw_error),cos(yaw_error)); 
        return normalized_yaw_error;
    }

    geometry_msgs::Twist& SetZeroVel(geometry_msgs::Twist &cmd_vel){
        cmd_vel.linear.x = 0;
        cmd_vel.linear.y = 0;
        cmd_vel.linear.z = 0;
        cmd_vel.angular.x = 0;
        cmd_vel.angular.y = 0;
        cmd_vel.angular.z = 0;
        return cmd_vel;
    }

//private func
private:
    PID &GetPostionPid(){return postion_pid_controller_;}
    PID &GetYawPid(){return yaw_pid_controller_;}
    bool SetPIDParamsCallback(photinia_msgs::PIDParams_srv::Request &req, photinia_msgs::PIDParams_srv::Response &res){
        GetPostionPid().SetParams(req.linear_p, req.linear_i, req.linear_d);
        GetPostionPid().SetLimitOut(0,req.max_linear);
        GetYawPid().SetParams(req.angle_p, req.angle_i, req.angle_d);  //不允许倒车
        GetYawPid().SetLimitOut(-req.max_w,req.max_w);  

        char str[1024];
        sprintf(str, "[SetPIDParamsCallback]:\n[Linear PID]: p:%f, i:%f, d:%f, limit_sum:%f, limit_output:(%f, %f) \n[Angular PID]: p:%f, i:%f, d:%f, limit_sum:%f, limit_output:(%f, %f)",
            GetPostionPid().GetParam_P(),GetPostionPid().GetParam_I(),GetPostionPid().GetParam_D(),GetPostionPid().GetParam_LimitSum(),GetPostionPid().GetParam_LimitOut_low(),GetPostionPid().GetParam_LimitOut_up(),
            GetYawPid().GetParam_P(),GetYawPid().GetParam_I(),GetYawPid().GetParam_D(),GetYawPid().GetParam_LimitSum(), GetYawPid().GetParam_LimitOut_low(),GetYawPid().GetParam_LimitOut_up());
        res.is_success = true;
        res.detail = str;
        ROS_INFO(str);
        return res.is_success;
    }
    
    //TODO
    //获取车体速度，可以由轮子编码器速度逆解获得
    //note: 这里暂时只用来判断是否静止，所以就简单用平均值代替逆解 2024.4.17
    void ChassisCallback(const dg_msgs::ChassisStateConstPtr chassis_state){
        SetZeroVel(current_vel_.twist);
        current_vel_.header.stamp = ros::Time::now();
        try{
            json chassis = json::parse(chassis_state->chassis_state_json.c_str());
            double vel1 = chassis.at("front_left_wheel.speed_").get<double>();
            double vel2 = chassis.at("front_right_wheel.speed_").get<double>();
            double vel3 = chassis.at("back_left_wheel.speed_").get<double>();
            double vel4 = chassis.at("back_right_wheel.speed_").get<double>();
            double agl1 = chassis.at("front_left_wheel.angle_").get<double>();
            double agl2 = chassis.at("front_right_wheel.angle_").get<double>();
            double agl3 = chassis.at("back_left_wheel.angle_").get<double>();
            double agl4 = chassis.at("back_right_wheel.angle_").get<double>();
            current_vel_.twist.linear.x  = (vel1+vel2+vel3+vel4)/4;
            current_vel_.twist.angular.z = (agl1+agl2+agl3+agl4)/4;
        }
        catch(const json::parse_error &e){
            ROS_WARN("[ChassisCallback]:%s",e.what());
            return ;
        }
        catch(const std::out_of_range &e){
            ROS_WARN("[ChassisCallback]:%s",e.what());
            return;
        }
    }

    void TurtleChassisCallback(const turtlesim::PoseConstPtr pose){
        SetZeroVel(current_vel_.twist);
        current_vel_.header.stamp = ros::Time::now();
        current_vel_.twist.linear.x = pose->linear_velocity;
        current_vel_.twist.angular.z = pose->angular_velocity;
        // ROS_FATAL("TurtleChassisCallback");
    }

private:
  PID postion_pid_controller_;
  PID yaw_pid_controller_;
  ros::Subscriber location_sub_;
  tf2_ros::Buffer *tf_;
  geometry_msgs::PoseStamped target_pose_;
  geometry_msgs::PoseStamped current_pose_;
  geometry_msgs::TwistStamped current_vel_;
  ros::Subscriber chassis_state_sub_;
  ros::ServiceServer set_pid_params_srv_;
  MOTION_MODEL motion_model_;

  std::vector<geometry_msgs::PoseStamped>*global_plan_;
};

class SimpleMoveBase{
public:
    SimpleMoveBase(tf2_ros::Buffer &tf) : tf_(tf), move_to_goal_as_("move_to_goal",std::bind(&SimpleMoveBase::ExecutableCb,this,std::placeholders::_1),false){
        ros::NodeHandle public_nh;
        #ifdef USE_TURTLE_TEST
        cmd_vel_pub_ = public_nh.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 1);  //TODO
        #else 
        cmd_vel_pub_ = public_nh.advertise<geometry_msgs::Twist>("/cmd_vel", 1);  //TODO
        #endif
        pid_local_planner_.Initialize("QuadSteerController", &tf_);
        global_plan_ = new std::vector<geometry_msgs::PoseStamped>();
        control_rate_ = 20;
        move_to_goal_as_.start();
    }
    ~SimpleMoveBase(){
        delete global_plan_;
    }

private:
    tf2_ros::Buffer &tf_;
    geometry_msgs::PoseStamped target_pose_;
    geometry_msgs::PoseStamped current_pose_;
    ros::Publisher cmd_vel_pub_;
    actionlib::SimpleActionServer<photinia_msgs::MoveToGoalAction> move_to_goal_as_;

    geometry_msgs::Twist brake_vel_;

    int control_rate_;
    SimpleQuadSteerController pid_local_planner_;
    std::vector<geometry_msgs::PoseStamped> *global_plan_;

    void ExecutableCb(const photinia_msgs::MoveToGoalGoalConstPtr &goal){
        double brake_distance = 1e+10;
        double brake_angle = 1e+10;
        target_pose_ = goal->target_pose;
        switch (goal->motion_model){
        case 1: //直行
            RotateMoveWithoutBrake(target_pose_);  //原地旋转对准目标
            brake_distance = LineMove(target_pose_);
            break;
        case 2: //平移
            brake_distance = ParallMove(target_pose_);
            break;
        case 3: //原地旋转
            brake_angle = RotateMove(target_pose_);
            break;
        default:
            move_to_goal_as_.setAborted();
            ROS_WARN("[move_to_goal_action]: unknwn motion_model! ");
            return;
            break;
        }
        photinia_msgs::MoveToGoalResult result;
        result.brake_distance = brake_distance;
        if(false == GetCurrentPose(tf_, current_pose_ )){
            move_to_goal_as_.setAborted();
            ROS_INFO("[move_to_goal_action]: false == GetCurrentPose(tf_, current_pose_ )");
            return;
        }
        result.end_pose = current_pose_;
        result.brake_vel = brake_vel_;
        move_to_goal_as_.setSucceeded(result);
        ROS_INFO("[move_to_goal_action]: auto brake distance = %f",brake_distance);
        ROS_INFO("[move_to_goal_action]: auto brake angle = %f",brake_angle);
    }

    double ParallMove(const geometry_msgs::PoseStamped &target_pose_){
        ros::Rate rate(control_rate_);
        geometry_msgs::Twist cmd_vel;
        global_plan_->clear();
        global_plan_->push_back(target_pose_);
        pid_local_planner_.SetPlan(global_plan_);
        pid_local_planner_.SetMoveModel(MOTION_MODEL::PARALL_MOVE);
        while(false == pid_local_planner_.IsPositionReached()){  //到达目标位置点，注意只是到了那个位置，此时可能速度不为0
            pid_local_planner_.ComputeVelocityCommands(cmd_vel);
            cmd_vel_pub_.publish(cmd_vel);
            rate.sleep();
        }
        cmd_vel_pub_.publish(SetZeroVel(cmd_vel));  //制动
        // geometry_msgs::PoseStamped brake_pose;
        // GetCurrentPose(tf_,brake_pose);
        while(false == pid_local_planner_.IsStatic()); //等待底盘静止
        if(false == GetCurrentPose(tf_, current_pose_ ))return 1e+10;
        return CalculateDist(current_pose_, target_pose_);  //返回导航误差
    }

    bool RotateMove(const geometry_msgs::PoseStamped &target_pose_){
        ROS_INFO("[RotateMove]: Target yaw: %.3f", tf::getYaw(target_pose_.pose.orientation)*57.29578);
        ros::Rate rate(control_rate_);
        geometry_msgs::Twist cmd_vel;
        global_plan_->clear();
        global_plan_->push_back(target_pose_);
        pid_local_planner_.SetPlan(global_plan_);
        pid_local_planner_.SetMoveModel(MOTION_MODEL::ROTATE_MOVE);
        while(false == pid_local_planner_.IsOrientationtionReached()){  //到达目标姿态，此时底盘可能不静止
            pid_local_planner_.ComputeVelocityCommands(cmd_vel);
            cmd_vel_pub_.publish(cmd_vel);
            rate.sleep();
        }
        cmd_vel_pub_.publish(SetZeroVel(cmd_vel));  //制动
        while(false == pid_local_planner_.IsStatic()); //等待底盘静止
        if(false == GetCurrentPose(tf_, current_pose_ ))return 1e+10;
        double yaw_error = CalculateAngleError(current_pose_, target_pose_);
        ROS_INFO("[RotateMove]: reached goal, yaw_error: %.3f", yaw_error*57.29578);
        return yaw_error;  //返回旋转误差
    }

    bool RotateMoveWithoutBrake(const geometry_msgs::PoseStamped &target_pose_){
        ROS_INFO("[RotateMoveWithoutBrake]: Target yaw: %.3f", tf::getYaw(target_pose_.pose.orientation)*57.29578);
        ros::Rate rate(control_rate_);
        geometry_msgs::Twist cmd_vel;
        global_plan_->clear();
        global_plan_->push_back(target_pose_);
        pid_local_planner_.SetPlan(global_plan_);
        pid_local_planner_.SetMoveModel(MOTION_MODEL::ROTATE_MOVE);
        while(false == pid_local_planner_.IsOrientationtionReached() || false == pid_local_planner_.IsStatic()){  //到达目标姿态，到达时静止
            pid_local_planner_.ComputeVelocityCommands(cmd_vel);
            cmd_vel_pub_.publish(cmd_vel);
            ROS_INFO("[RotateMoveWithoutBrake]: Linear(%.3f,%.3f,%.3f), angular(%.3f,%.3f,%.3f)", 
                cmd_vel.linear.x,  cmd_vel.linear.y,  cmd_vel.linear.z, cmd_vel.angular.x, cmd_vel.angular.y, cmd_vel.angular.z );
            rate.sleep();
        }
        cmd_vel_pub_.publish(SetZeroVel(cmd_vel));  //停车
        while(false == pid_local_planner_.IsStatic()); //等待底盘静止
        ROS_INFO("Chassis stop!");

        if(false == GetCurrentPose(tf_, current_pose_ ))return 1e+10;
        double yaw_error = CalculateAngleError(current_pose_, target_pose_);
        ROS_INFO("[RotateMoveWithoutBrake]: reached goal, yaw_error: %.3f", yaw_error*57.29578);
        return yaw_error;  //返回旋转误差
    }

    double LineMove(const geometry_msgs::PoseStamped &target_pose_){
        ROS_INFO("[LineMove]: Target position: (%.3f,%.3f,%.3f)", target_pose_.pose.position.x, target_pose_.pose.position.y, target_pose_.pose.position.z);
        ros::Rate rate(control_rate_);
        geometry_msgs::Twist cmd_vel;
        global_plan_->clear();
        global_plan_->push_back(target_pose_);
        pid_local_planner_.SetPlan(global_plan_);
        pid_local_planner_.SetMoveModel(MOTION_MODEL::LINE_MOVE);
        while(false == pid_local_planner_.IsPositionReached()){  //到达目标位置，此时底盘可能不静止
            pid_local_planner_.ComputeVelocityCommands(cmd_vel);
            cmd_vel_pub_.publish(cmd_vel);
            ROS_INFO("[LineMove]: Linear(%.3f,%.3f,%.3f), angular(%.3f,%.3f,%.3f)", 
                cmd_vel.linear.x,  cmd_vel.linear.y,  cmd_vel.linear.z, cmd_vel.angular.x, cmd_vel.angular.y, cmd_vel.angular.z );
            rate.sleep();
        }
        this->brake_vel_  = cmd_vel;
        cmd_vel_pub_.publish(SetZeroVel(cmd_vel)); //制动
        geometry_msgs::PoseStamped brake_pose;
        GetCurrentPose(tf_,brake_pose);
        while(false == pid_local_planner_.IsStatic()){ros::Rate(100).sleep();}; //等待底盘静止
        ROS_ERROR_COND(false == GetCurrentPose(tf_, current_pose_ ), "[LineMove]: current pose is not avaliable, LineMove unknown!");
        double brake_distance = CalculateDist2D(current_pose_, brake_pose);
        double nav_error = CalculateDist(current_pose_, target_pose_);
        ROS_WARN("[LineMove]: Not reached goal.\n"
        "brake_pos:\t(%.3f,%.3f,%.3f)\n"
        "current_pos:\t(%.3f,%.3f,%.3f)\n"
        "target_pos:\t(%.3f,%.3f,%.3f)\n"
        "nav_error:\t(%.6fm)\n"
        "brake_distance:\t(%.6fm)\n"
        "brake_vel{linear(%.6f,%.6f,%.6f), angular(%.3f,%.3f,%.3f)}", brake_pose.pose.position.x, brake_pose.pose.position.y, brake_pose.pose.position.z, 
        current_pose_.pose.position.x, current_pose_.pose.position.y, current_pose_.pose.position.z, 
        target_pose_.pose.position.x, target_pose_.pose.position.y, target_pose_.pose.position.z, 
        nav_error,brake_distance,
        brake_vel_.linear.x,brake_vel_.linear.y,brake_vel_.linear.z,
        brake_vel_.angular.x,brake_vel_.angular.y,brake_vel_.angular.z);
        return brake_distance;  //返回制动距离
    }

    double FourSteerMove(const geometry_msgs::PoseStamped &target_pose_){
        ros::Rate rate(control_rate_);
        geometry_msgs::Twist cmd_vel;
        global_plan_->clear();
        global_plan_->push_back(target_pose_);
        pid_local_planner_.SetPlan(global_plan_);
        pid_local_planner_.SetMoveModel(MOTION_MODEL::ROTATE_MOVE);
        while(false == pid_local_planner_.IsGoalReached()){  //到达目标姿态，此时底盘可能不静止
            pid_local_planner_.ComputeVelocityCommands(cmd_vel);
            cmd_vel_pub_.publish(cmd_vel);
            rate.sleep();
        }
        cmd_vel_pub_.publish(SetZeroVel(cmd_vel)); //停机
         geometry_msgs::PoseStamped brake_pose;
        GetCurrentPose(tf_,brake_pose);
        while(false == pid_local_planner_.IsStatic()); //等待底盘静止
        auto brake_distance = CalculateDist2D(current_pose_, brake_pose);  //距离制动时的距离==》真实制动距离
        return CalculateDist(current_pose_, target_pose_);  //返回导航误差
    }

    geometry_msgs::Twist& SetZeroVel(geometry_msgs::Twist &cmd_vel){
        cmd_vel.linear.x = 0;
        cmd_vel.linear.y = 0;
        cmd_vel.linear.z = 0;
        cmd_vel.angular.x = 0;
        cmd_vel.angular.y = 0;
        cmd_vel.angular.z = 0;
        return cmd_vel;
    }

    //工具
private:
    double CalculateDist(const geometry_msgs::PoseStamped &pose1, const geometry_msgs::PoseStamped &pose2){
        auto dx = pose1.pose.position.x - pose2.pose.position.x;
        auto dy = pose1.pose.position.y - pose2.pose.position.y;
        auto dz = pose1.pose.position.z - pose2.pose.position.z;
        return pow(pow(dx,2)+pow(dy,2)+pow(dz,2),0.5);
    }
    double CalculateDist2D(const geometry_msgs::PoseStamped &pose1, const geometry_msgs::PoseStamped &pose2){
    auto dx = pose1.pose.position.x - pose2.pose.position.x;
    auto dy = pose1.pose.position.y - pose2.pose.position.y;
    return pow(pow(dx,2)+pow(dy,2),0.5);
}

    double CalculateAngleError(const geometry_msgs::PoseStamped &pose_target, const geometry_msgs::PoseStamped &pose_current){
        auto yaw_error = tf::getYaw(pose_target.pose.orientation) - tf::getYaw(pose_current.pose.orientation);
        auto normalized_yaw_error = atan2(sin(yaw_error),cos(yaw_error)); 
        return normalized_yaw_error;
    }
};

int main(int argc, char** argv){
    ros::init(argc, argv, "move_base");
    ros::AsyncSpinner spinner(6);
    tf2_ros::Buffer buffer(ros::Duration(10));
    tf2_ros::TransformListener tf(buffer);

    ros::NodeHandle public_nh;
    SimpleMoveBase move_base(buffer);
    spinner.start();
    while(ros::ok()){};
    return 0;
}