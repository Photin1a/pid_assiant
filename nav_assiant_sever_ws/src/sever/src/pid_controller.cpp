#include "pid_controller.h"

PIDController::PIDController() {
  ros::NodeHandle public_nh;
  location_sub_ = public_nh.subscribe("/TODO",1,&PIDController::LocationCallback,this);
  #ifdef USE_TEST
  location_3d_pub_ = public_nh.advertise<dg_msgs::Localization3D>("/localization_3d",1);
  chassis_state_pub_ = public_nh.advertise<dg_msgs::ChassisState>("/chassis_states",1);
  
  location_test_ = public_nh.subscribe("/turtle1/pose",1,&PIDController::LocationTestCallback,this);
  #endif

  set_pid_params_srv_ = public_nh.advertiseService("/pid_params_srv", &PIDController::SetPIDParamsCallback,this);
  GetPostionPid().SetParams(0.2,0.011,0).SetLimitSum(10).SetLimitOut(-1,1);
  GetYawPid().SetParams(0.6,0.01,0).SetLimitSum(10).SetLimitOut(-1,1);
}

bool PIDController::SetPIDParamsCallback(photinia_msgs::PIDParams_srv::Request &req, photinia_msgs::PIDParams_srv::Response &res){
  GetPostionPid().SetParams(req.linear_p, req.linear_i, req.linear_d);
  GetYawPid().SetParams(req.angle_p, req.angle_i, req.angle_d);
  ROS_INFO("[Linear PID]=>p:%f, i:%f, d:%f, limit_sum:%f, limit_output:(%f, %f) ",GetPostionPid().GetParam_P(),GetPostionPid().GetParam_I(),GetPostionPid().GetParam_D(),GetPostionPid().GetParam_LimitSum(),GetPostionPid().GetParam_LimitOut_low(),GetPostionPid().GetParam_LimitOut_up());
  ROS_INFO("[Angular PID]=>p:%f, i:%f, d:%f, limit_sum:%f, limit_output:(%f, %f) ",GetYawPid().GetParam_P(),GetYawPid().GetParam_I(),GetYawPid().GetParam_D(),GetPostionPid().GetParam_LimitOut_low(),GetPostionPid().GetParam_LimitOut_up());
  res.is_success = true;
  return true;
}

void PIDController::LocationCallback(const dg_msgs::Localization3DConstPtr location){
  std::unique_lock<std::mutex> lock(pose_mtx_);
  current_pose_ = location->localization;
  lock.unlock();
  available_location_ = true;
}

#ifndef USE_TEST
bool PIDController::ComputeVelocityCommands(geometry_msgs::Twist &cmd_vel) {
  if(available_location_ == false) return false;
  std::unique_lock<std::mutex> lock(pose_mtx_);
  auto dx = target_pose_.pose.position.x - current_pose_.pose.position.x;
  auto dy = target_pose_.pose.position.y - current_pose_.pose.position.y;
  auto dz = target_pose_.pose.position.z - current_pose_.pose.position.z;
  tf::Quaternion cur_qua;
  double current_yaw, pitch ,roll;
  tf::quaternionMsgToTF(current_pose_.pose.orientation, cur_qua);
  tf::Matrix3x3(cur_qua.normalized()).getRPY(roll,pitch,current_yaw);
  auto target_yaw  = atan2(dx,dy);
  auto yaw_error = target_yaw - current_yaw;   //获取yaw偏差
  lock.unlock();

 //获取位置偏差--距离
  int sign  = abs(yaw_error) > (PI/2) ? -1 : 1;  //角度偏差>90度选择倒车
  auto distance =  sign * sqrt(pow(dx,2) + pow(dy,2) + pow(dz,2));
  
  cmd_vel.linear.y = 0;
  cmd_vel.linear.z = 0;
  cmd_vel.angular.x = 0;
  cmd_vel.angular.y = 0;
  cmd_vel.linear.x = GetPostionPid().GetOutput(distance, 0);
  cmd_vel.angular.z = GetYawPid().GetOutput(yaw_error,0);
  return true;
}
bool PIDController::IsGoalReached() {
  std::unique_lock<std::mutex> lock(pose_mtx_);
  auto dx = target_pose_.pose.position.x - current_pose_.pose.position.x;
  auto dy = target_pose_.pose.position.y - current_pose_.pose.position.y;
  auto dz = target_pose_.pose.position.z - current_pose_.pose.position.z;
  return sqrt(pow(dx,2) + pow(dx,2) + pow(dz,2)) < 1e+5?true:false;
}

bool PIDController::SetPlan(std::vector<geometry_msgs::PoseStamped> global_plan) {
  global_plan_ = global_plan;
  target_pose_ = global_plan_->at(0);    //TODO
}
void PIDController::Initialize(const std::string &name, tf2_ros::Buffer *tf) {
  
}
PIDController::~PIDController() {}

PID &PIDController::GetPostionPid(){return postion_pid_controller_;}

PID &PIDController::GetYawPid(){return yaw_pid_controller_;}
#endif


#ifdef USE_TEST
bool PIDController::ComputeVelocityCommands(geometry_msgs::Twist &cmd_vel) {
  if(available_location_ == false) return false;
  std::unique_lock<std::mutex> lock(pose_mtx_);
  auto dx = turtle_target_pose_.pose.position.x - turtle_current_pose_.x;
  auto dy = turtle_target_pose_.pose.position.y - turtle_current_pose_.y;
  auto target_yaw  = atan2(dy, dx);  
  lock.unlock();

 //获取位置偏差--距离
  auto inner_product = cos(target_yaw)*cos(turtle_current_pose_.theta) + sin(target_yaw)*sin(turtle_current_pose_.theta);
  int sign  = inner_product > 0 ? 1 : -1;  //角度偏差>90度选择倒车
  // ROS_INFO("sign %d", sign);

  auto abs_dist = sqrt(pow(dx,2) + pow(dy,2));
  auto distance =  sign * abs_dist;
  // ROS_INFO("distance %f", distance);

    // ROS_INFO("target( %f %f)",turtle_target_pose_.pose.position.x,turtle_target_pose_.pose.position.y);
    // ROS_INFO("current( %f %f)",turtle_current_pose_.x,turtle_current_pose_.y);
  
  cmd_vel.linear.y = 0;
  cmd_vel.linear.z = 0;
  cmd_vel.angular.x = 0;
  cmd_vel.angular.y = 0;

  /******************************这部分是用来进行最后位姿调整的*********************************/
  if(abs_dist < 0.02){  //到达目标点，撤去动力，原地旋转调整位姿
    cmd_vel.linear.x = 0;
    tf::Quaternion qua;
    tf::quaternionMsgToTF(turtle_target_pose_.pose.orientation,qua);
    double yaw,pitch,roll;
    tf::Matrix3x3(qua).getRPY(roll,pitch,yaw);
    target_yaw = yaw;  //将位姿设置为最后的终点姿态
    sign = 0;
  }
  else{ 
    cmd_vel.linear.x = GetPostionPid().GetOutput(-distance);
  }
  // cmd_vel.linear.x = GetPostionPid().GetOutput(-distance, 0);

    if(sign==-1){   //如果倒车，yaw角要+PI
    target_yaw +=PI;
    if(target_yaw > PI){
      target_yaw-=2*PI;
    }
  }
  auto yaw_error = target_yaw - turtle_current_pose_.theta;   //获取yaw偏差
  auto normal_yaw_error = atan2(sin(yaw_error),cos(yaw_error));
  cmd_vel.angular.z = GetYawPid().GetOutput(-normal_yaw_error);
  // ROS_INFO("target_theta %f", target_yaw);
  // ROS_INFO("current_theta %f", turtle_current_pose_.theta);
  // ROS_INFO("cmd_x: (%f, %f)",cmd_vel.linear.x, cmd_vel.angular.z);
  return true;
}
bool PIDController::IsGoalReached() {
  std::unique_lock<std::mutex> lock(pose_mtx_);
  auto dx = turtle_target_pose_.pose.position.x - turtle_current_pose_.x;
  auto dy = turtle_target_pose_.pose.position.y - turtle_current_pose_.y;
  return sqrt(pow(dx,2) + pow(dx,2)) < 3e-2?true:false;
}

bool PIDController::SetPlan(std::vector<geometry_msgs::PoseStamped> *global_plan) {
  global_plan_ = global_plan;
  if(global_plan_->size()>0){
    turtle_target_pose_ = global_plan_->at(0);    //TODO
    return true;
  }
  else {
    // ROS_WARN("plan empty!");
    return false;
  }
}
void PIDController::Initialize(const std::string &name, tf2_ros::Buffer *tf) {
  
}
PIDController::~PIDController() {}

PID &PIDController::GetPostionPid(){return postion_pid_controller_;}

PID &PIDController::GetYawPid(){return yaw_pid_controller_;}
void PIDController::LocationTestCallback(const turtlesim::PoseConstPtr location){
  std::unique_lock<std::mutex> lock(pose_mtx_);
  turtle_current_pose_.x = location->x;
  turtle_current_pose_.y = location->y;
  turtle_current_pose_.theta = location->theta;
  lock.unlock();
  available_location_ = true;

  //location_3d_pub_
  dg_msgs::Localization3D msgs;
  msgs.confidence = 0.8;
  msgs.localization.pose.orientation = tf::createQuaternionMsgFromYaw(location->theta);
  msgs.localization.pose.position.x =  location->x;
  msgs.localization.pose.position.y =  location->y;
  msgs.localization.pose.position.z =  0;
  location_3d_pub_.publish(msgs);
  // ROS_INFO("position(%f, %f)",location->x,location->y);

  //chassis_state
  dg_msgs::ChassisState state;
  state.chassis_state_json="{\"battery_level\":90.5}";
  chassis_state_pub_.publish(state);
}
#endif


