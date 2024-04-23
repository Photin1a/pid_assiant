#ifndef PID_CONTROLLER_H
#define PID_CONTROLLER_H

#include "base_local_planner.h"
#include <cmath>
#include <iostream>
#include <memory>
#include <ros/ros.h>
#include <dg_msgs/Localization3D.h>
#include <dg_msgs/ChassisState.h>
#include <tf2/LinearMath/Quaternion.h>
#include <tf/tf.h>
#include <mutex>
#include <turtlesim/Pose.h>
#include <photinia_msgs/PIDParams.h>
#include <photinia_msgs/PIDParams_srv.h>

#define PI 3.1415926

#define USE_TEST

typedef struct PIDparams
{
  double p;
  double i;
  double d;
  double limit_i;      // 积分限幅，默认不限幅
  double limit_output_low; // 输出限幅，默认-100
  double limit_output_up; // 输出限幅，默认100
} PIDparams;

class PID
{
public:
  PID(double p = 0, double i = 0, double d = 0, double limit_i = 1e+300, double limit_output_low = 1e-2,double limit_output_up=1e+2){
    params_={p, i, d, limit_i, limit_output_low,limit_output_up};
  }

private : 
  PIDparams params_;
  double last_error_ = 0;
  double sum_error_ = 0;
  double diff_error_ = 0;

public:
  double GetOutput(const double &current_error){
    // ROS_INFO("current_error: %d",current_error);
    sum_error_ += current_error;
    diff_error_ = current_error - last_error_;
    sum_error_ = sum_error_ < params_.limit_i ? sum_error_ : params_.limit_i; // 积分上限
    sum_error_ = sum_error_ > -params_.limit_i ? sum_error_ : -params_.limit_i; // 积分下限
    auto output = params_.p * current_error + params_.i * sum_error_ + params_.d * diff_error_;
    output = output < params_.limit_output_up ? output : params_.limit_output_up; // 输出上限
    output = output > params_.limit_output_low ? output : params_.limit_output_low; // 输出下限
    return output;
  }

  double GetParam_P(){
    return params_.p;
  }
    double GetParam_I(){
    return params_.i;
  }
    double GetParam_D(){
    return params_.d;
  }

  double GetParam_LimitSum(){
    return params_.limit_i;
  }

  double GetParam_LimitOut_low(){
    return params_.limit_output_low;
  }

  double GetParam_LimitOut_up(){
    return params_.limit_output_up;
  }

  PID& SetParams(double p, double i, double d){
    params_.p = p;
    params_.i = i;
    params_.d = d;
    return *this;
  }

  PID& ReWarmStart(){
    last_error_ = 0;
    sum_error_ = 0;
    diff_error_ = 0;
    return *this;
  }

  PID& SetLimitSum(double sum_error){
    params_.limit_i = sum_error;
    return *this;
  }

    PID& SetLimitOut(double output_low, double output_up){
    params_.limit_output_low = output_low;
    params_.limit_output_up = output_up;
    return *this;
  }
};

class PIDController : BaseLocalPlanner
{
public:
  PIDController();

  // 父类继承重写
public:
  bool ComputeVelocityCommands(geometry_msgs::Twist &cmd_vel) override;
  bool IsGoalReached() override;
  bool SetPlan(std::vector<geometry_msgs::PoseStamped>  *global_plan) override;
  void Initialize(const std::string &name, tf2_ros::Buffer *tf) override;
  ~PIDController();

private:
  PID &GetPostionPid();
  PID &GetYawPid();
  void LocationCallback(const dg_msgs::Localization3DConstPtr location);
  bool SetPIDParamsCallback(photinia_msgs::PIDParams_srv::Request &req, photinia_msgs::PIDParams_srv::Response &res);
  #ifdef USE_TEST
  ros::Subscriber location_test_;
  ros::Publisher location_3d_pub_;
  ros::Publisher chassis_state_pub_;
  turtlesim::Pose  turtle_current_pose_;
  geometry_msgs::PoseStamped turtle_target_pose_;
  void LocationTestCallback(const turtlesim::PoseConstPtr location);
  #endif

  private:
  PID postion_pid_controller_;
  PID yaw_pid_controller_;
  ros::Subscriber location_sub_;
  ros::ServiceServer set_pid_params_srv_;

  bool available_location_ = false;

  std::mutex pose_mtx_;
  geometry_msgs::PoseStamped current_pose_;
  geometry_msgs::PoseStamped target_pose_;

  std::vector<geometry_msgs::PoseStamped>*global_plan_;
};

#endif