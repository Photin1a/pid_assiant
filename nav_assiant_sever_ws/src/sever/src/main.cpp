#include "tcp_connect.h"
#include <cmath>
#include <csignal>
#include <dg_msgs/ChassisState.h>
#include <dg_msgs/Localization3D.h>
#include <geometry_msgs/Twist.h>
#include <photinia_msgs/PIDParams.h>
#include <photinia_msgs/PIDParams_srv.h>
#include <nlohmann/json.hpp>
#include <ros/ros.h>
#include <ros/spinner.h>
#include <thread>
#include <actionlib/client/simple_action_client.h>
#include <photinia_msgs/MoveToGoalAction.h>
#include <tf/tf.h>
#include <mutex>
#include <condition_variable>

using namespace nlohmann;

ros::Subscriber chassis_state_sub, location_sub, speed_sub;
ros::Publisher PIDParams_pub;
ros::ServiceClient pid_client;
std::shared_ptr<TCPServer> server_ptr;
std::shared_ptr<actionlib::SimpleActionClient<photinia_msgs::MoveToGoalAction>>  move_to_goal_action;
json chassis_state;
double test_distance = 0;
void SetParams(const json &doc,
               std::shared_ptr<TCPServer> &server_ptr);
void StartTest();
void SendLocationToUi(std::shared_ptr<TCPServer> &server_ptr);
void RecvBatteryCallback(dg_msgs::ChassisState chassis_state);
void RecvLocationCallback(const dg_msgs::Localization3DConstPtr localization_3d);
void RecvSpeedCallback(geometry_msgs::Twist twist);
void DealDataCallback(const std::string &Msg, void *arg_this);

std::mutex send_mtx;
std::condition_variable send_cv;
bool send_signal = false;
int main(int argc, char **argv) {
  /*****************TCPSever 异步*********/
  server_ptr = std::make_shared<TCPServer>(4042, std::bind(DealDataCallback,std::placeholders::_1,nullptr));
  server_ptr->AsynRun();
  std::thread send_to_ui(std::bind(StartTest));
  /*****************ROS*********/
  ros::init(argc, argv, "pid_server");
  ros::NodeHandle nh;
  /*******************************************/
  PIDParams_pub =
      nh.advertise<photinia_msgs::PIDParams>("/chassis_pid_params", 1);
  chassis_state_sub = nh.subscribe<dg_msgs::ChassisState>("/chassis_states", 1,
                                                          &RecvBatteryCallback);
  location_sub = nh.subscribe<dg_msgs::Localization3D>("/localization_3d", 1,
                                                       &RecvLocationCallback);
  speed_sub = nh.subscribe<geometry_msgs::Twist>("/turtle1/cmd_vel", 1,
                                                 &RecvSpeedCallback);
  pid_client = nh.serviceClient<photinia_msgs::PIDParams_srv>("/pid_params_srv");

  //move_to_goal_action
  move_to_goal_action = std::make_shared<actionlib::SimpleActionClient<photinia_msgs::MoveToGoalAction>>("move_to_goal", true);

  ros::spin();
  return 0;
}

void SetParams(const json &doc,
               std::shared_ptr<TCPServer> &server_ptr) {
std::cout<<"doc.dump()"<<doc.dump()<<std::endl;
  json doc_respon;
  doc_respon["response_type"] = "received_params";
  //发布PID参数服务
  if(!pid_client.waitForExistence(ros::Duration(5))){  //等待服务启动 5S,失败返回
    ROS_ERROR("[PIDServer]None started!");
    doc_respon["state"] = "failed";
    doc_respon["detail"] = "[PIDServer]None started!";
    std::string str_respon = doc_respon.dump();
    if (server_ptr->GetSessionNum() > 0) {
      server_ptr->AsynSend(server_ptr->GetSession(0), str_respon);
    } //回应UI
    return;
  }  
  try{
    photinia_msgs::PIDParams_srv srv;
    srv.request.time = std::to_string(ros::Time::now().toSec());  
    // srv.request.test_distance = doc["test_distance"];
    test_distance = doc["test_distance"];  //设置测试距离
    srv.request.max_linear = doc["max_v"];
    srv.request.max_w = doc["max_w"];
    srv.request.linear_p = doc["linear_pid"][0];
    srv.request.linear_i = doc["linear_pid"][1];
    srv.request.linear_d = doc["linear_pid"][2];
    srv.request.angle_p = doc["angular_pid"][0];
    srv.request.angle_i = doc["angular_pid"][1];
    srv.request.angle_d = doc["angular_pid"][2];
    if(true == pid_client.call(srv) && true == srv.response.is_success){
      ROS_INFO("successful");
    }else{
      ROS_INFO("successful");
    }
  }
  catch(json::type_error){
    ROS_ERROR("[PIDServer]json::type_error!");
    doc_respon["state"] = "failed";
    doc_respon["detail"] = "[PIDServer]json::type_error!";
    std::string str_respon = doc_respon.dump();
    if (server_ptr->GetSessionNum() > 0) {
      server_ptr->AsynSend(server_ptr->GetSession(0), str_respon);
    } //回应UI
    return;
  }
  catch(json::parse_error){
    ROS_ERROR("[PIDServer]json::parse_error!");
    doc_respon["state"] = "failed";
    doc_respon["detail"] = "[PIDServer]json::parse_error";
    std::string str_respon = doc_respon.dump();
    if (server_ptr->GetSessionNum() > 0) {
      server_ptr->AsynSend(server_ptr->GetSession(0), str_respon);
    } //回应UI
    return;
  }
  doc_respon["state"] = "successful";
  doc_respon["detail"] = "[PIDServer]Updated pid params, successfully!";
  std::string str_respon = doc_respon.dump();
  if (server_ptr->GetSessionNum() > 0) {
    server_ptr->AsynSend(server_ptr->GetSession(0), str_respon);
  } //回应UI
}
void StartTest() {
  while(1){
    std::unique_lock<std::mutex> lock(send_mtx);
    send_cv.wait(lock,[](){return send_signal;});
    ROS_INFO("wait move_base Server");
    move_to_goal_action->waitForServer();
    ROS_INFO("started move_base Server");
    photinia_msgs::MoveToGoalGoal goal;
    goal.target_pose.pose.orientation.x = chassis_state["Quaternion"][0];  
    goal.target_pose.pose.orientation.y = chassis_state["Quaternion"][1];
    goal.target_pose.pose.orientation.z = chassis_state["Quaternion"][2];
    goal.target_pose.pose.orientation.w = chassis_state["Quaternion"][3];
    tf::Quaternion qua;
    tf::quaternionMsgToTF(goal.target_pose.pose.orientation, qua);
    double cur_yaw =  tf::getYaw(qua);
    double x = chassis_state["localization"][0], y = chassis_state["localization"][1];
    goal.target_pose.pose.position.x = test_distance*cos(cur_yaw) + x;  //前进test_distance米
    goal.target_pose.pose.position.y = test_distance*sin(cur_yaw) + y;
    goal.target_pose.pose.position.z = chassis_state["localization"][2];
    goal.motion_model = 1;
    auto linear = chassis_state["linear_velocity"];
    auto angular = chassis_state["angular_velocity"];
    move_to_goal_action->sendGoal(goal);  //goal为制动时的位姿
    move_to_goal_action->waitForResult();
    if(move_to_goal_action->getState() == actionlib::SimpleClientGoalState::SUCCEEDED){
      auto auto_brake_distance = move_to_goal_action->getResult()->brake_distance;
      //回应UI
      json doc;
      doc["response_type"] = "finish_test";
      doc["auto_brake_distance"] = auto_brake_distance;
      doc["linear_velocity"] = linear;
      doc["angular_velocity"] = angular;
      if (server_ptr->GetSessionNum() > 0) {
        server_ptr->AsynSend(server_ptr->GetSession(0), doc.dump());  //把自动计算的制动距离和制动时的速度打包发出来
        ROS_INFO("auto caculate Brake disatance %f",auto_brake_distance);
      }
    }
    send_signal = false;  
  }
} //发布目标点服务

//发送定位到UI显示
void SendLocationToUi(std::shared_ptr<TCPServer> &server_ptr) {
    if (server_ptr->GetSessionNum() > 0) {
      server_ptr->AsynSend(server_ptr->GetSession(0), chassis_state.dump());
      // ROS_INFO("SendLocationToUi");
    }
}

//回调函数
//获取电量
void RecvBatteryCallback(dg_msgs::ChassisState chassis_state_msg) {
  json js;
  try{
    js = json::parse(chassis_state_msg.chassis_state_json.c_str());
    if(!js.is_object()){
      return;
    }
   chassis_state["battery"] = js["battery_level"];
   chassis_state["ping"] = 466;
  }
  catch(json::parse_error){
    return;
  }
  catch(json::type_error){
    return;
  }
}

// ros 回调函数
//获取底盘定位、置信度
void RecvLocationCallback(const dg_msgs::Localization3DConstPtr localization_3d) {
  // ROS_INFO("RecvLocationCallback");
  chassis_state["response_type"] = "realtime_location";
  chassis_state["time_stamped"] = std::to_string(ros::Time::now().toSec());  //时间戳S
  chassis_state["localization"] = {localization_3d->localization.pose.position.x,localization_3d->localization.pose.position.y,localization_3d->localization.pose.position.z};
  chassis_state["Quaternion"] = {localization_3d->localization.pose.orientation.x,localization_3d->localization.pose.orientation.y,localization_3d->localization.pose.orientation.z,localization_3d->localization.pose.orientation.w};
  chassis_state["confidence"] = localization_3d->confidence;
  // current_pose = localization_3d->localization;
}

//回调函数
//获取线速度、角速度
void RecvSpeedCallback(geometry_msgs::Twist twist) {
  // ROS_INFO("RecvSpeedCallback");
  chassis_state["linear_velocity"] = {twist.linear.x,twist.linear.y,twist.linear.z};
  chassis_state["angular_velocity"] = {twist.angular.x, twist.angular.y, twist.angular.z};
}

void DealDataCallback(const std::string &Msg, void *arg_this) {
  // ROS_INFO("DealDataCallback");
  json doc;
  try{
    doc = json::parse(Msg);
    if(!doc.is_object()){
    return;
    }
    if (doc["require_type"] == "send_params") {
    if(true == send_signal){
        ROS_WARN("Existed test task!!");
        return;  //如果正在测试，则返回
    }
    ROS_INFO("Prepare SetParams");
    SetParams(doc, server_ptr);
    } else if (doc["require_type"] == "start_to_test") {
      if(true == send_signal){
        ROS_WARN("Existed test task!!");
        return;  //如果正在测试，则返回
      }
      ROS_INFO("Prepare StartTest");
      std::unique_lock<std::mutex> lock(send_mtx);
      send_signal = true;
      send_cv.notify_all();
    } else if (doc["require_type"] == "realtime_location") {
      // ROS_INFO("Prepare SendLocationToUi");
      SendLocationToUi(server_ptr);
  }
  }
  catch(json::parse_error){
    return;
  }
  catch(json::type_error){
    return;
  }
}
