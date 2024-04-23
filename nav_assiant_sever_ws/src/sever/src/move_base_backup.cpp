// #include <cmath>
// #include <dg_msgs/Localization3D.h>
// #include <geometry_msgs/Twist.h>
// #include <ros/ros.h>
// #include <ros/spinner.h>
// #include "pid_controller.h"
// #include <csignal>
// #include <photinia_msgs/MoveToGoalAction.h>
// #include <actionlib/server/simple_action_server.h>
// #include <thread>
// #include <mutex>
// #include <condition_variable>

// class SimpleMoveBase{
// public:
//     SimpleMoveBase(ros::NodeHandle &nh) : nh_(nh), move_to_goal_as_("move_to_goal",std::bind(&SimpleMoveBase::ExecutableCb,this,std::placeholders::_1),false),runPlanner_(false),new_global_plan_(false){
//         cmd_vel_pub_ = nh_.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 1);
//         plan_thread_ = std::thread(std::bind(&SimpleMoveBase::PlanThreadFunc, this));
//         // control_thread_  = std::thread(std::bind(&SimpleMoveBase::ControlThreadFunc, this));

//         global_plan_ = new std::vector<geometry_msgs::PoseStamped>();
//         latest_plan_ = new std::vector<geometry_msgs::PoseStamped>();

//         plan_rate_  = 1;
//         control_rate_ = 10;

//         move_to_goal_as_.start();
//     }
//     ~SimpleMoveBase(){
//         // plan_thread_.join();
//         // control_thread_.join();
//         delete global_plan_;
//         delete latest_plan_;
//     }

// private:
//     ros::NodeHandle &nh_;
//     //global plann
//     std::mutex planner_mtx_;
//     std::mutex plan_var_mtx_;
//     std::condition_variable planner_cv_;  //condition var
//     bool runPlanner_;   //condition
//     bool new_global_plan_;
//     std::vector<geometry_msgs::PoseStamped> *global_plan_;
//     std::vector<geometry_msgs::PoseStamped> *latest_plan_;
//     int plan_rate_;

//     ros::Publisher cmd_vel_pub_;
//     PIDController pid_local_planner_;
//     int control_rate_;

//     actionlib::SimpleActionServer<photinia_msgs::MoveToGoalAction> move_to_goal_as_;
//     std::thread plan_thread_;
//     std::thread control_thread_;
//     geometry_msgs::PoseStamped target_pose_;
//     geometry_msgs::PoseStamped current_pose_;

//     //goal action
//     void ExecutableCb(const photinia_msgs::MoveToGoalGoalConstPtr &goal){
//         std::unique_lock<std::mutex> lock(plan_var_mtx_);
//         target_pose_ = goal->target_pose;
//         runPlanner_ = true;
//         planner_cv_.notify_all();  //awake PlanThread
//         lock.unlock();

//         /**************job***************/
//         {
//         ros::Rate rate(control_rate_);
//         geometry_msgs::Twist cmd_vel;
//         bool brake_signal = false;
//         while(nh_.ok()){
//             if(false == pid_local_planner_.SetPlan(latest_plan_))continue;
//             while(nh_.ok() && !new_global_plan_){
//                 if(true == pid_local_planner_.IsGoalReached()) {  //制动
//                     cmd_vel.linear.x = 0;
//                     cmd_vel.linear.y = 0;
//                     cmd_vel.linear.z = 0;
//                     cmd_vel.angular.x = 0;
//                     cmd_vel.angular.y = 0;
//                     cmd_vel.angular.z = 0;
//                     move_to_goal_as_.setSucceeded();
//                     ROS_WARN("****************************************************************Start Brake!*********************************************************");
//                     return;
//                 }
//                 else pid_local_planner_.ComputeVelocityCommands(cmd_vel);
//                 cmd_vel_pub_.publish(cmd_vel);
//                 ROS_INFO("cmd_x: (%f, %f)",cmd_vel.linear.x, cmd_vel.angular.z);
//                 rate.sleep();
//             }
//             std::unique_lock<std::mutex> lock(plan_var_mtx_);
//             new_global_plan_ = false;
//             lock.unlock();
//         }
//         cmd_vel_pub_.publish(cmd_vel);
//     }
//     //////////////////////////////////////////////
//     }

//     void PlanThreadFunc(){
//         while(nh_.ok()){
//             std::unique_lock<std::mutex> lock(plan_var_mtx_);
//             {
//                 std::unique_lock<std::mutex> lock2(planner_mtx_);
//                 planner_cv_.wait(lock, [this](){return runPlanner_;});    //clog  until awaked
//                 global_plan_->clear();
//                 global_plan_->emplace_back(target_pose_);  //plan
//             }
//             auto temp  = latest_plan_;
//             latest_plan_ = global_plan_;
//             global_plan_ = temp;
//             runPlanner_ = false;
//             new_global_plan_ = true;
//             lock.unlock();
//         }
//     }

//     void ControlThreadFunc(){
//         ros::Rate rate(control_rate_);
//         geometry_msgs::Twist cmd_vel;
//         bool brake_signal = false;
//         while(nh_.ok()){
//             if(false == pid_local_planner_.SetPlan(latest_plan_))continue;
//             while(nh_.ok() && !new_global_plan_){
//                 if(true == pid_local_planner_.IsGoalReached()) {  //制动
//                     cmd_vel.linear.x = 0;
//                     cmd_vel.linear.y = 0;
//                     cmd_vel.linear.z = 0;
//                     cmd_vel.angular.x = 0;
//                     cmd_vel.angular.y = 0;
//                     cmd_vel.angular.z = 0;
//                     brake_signal  = true;
//                 }
//                 if(true == brake_signal){
//                     move_to_goal_as_.setSucceeded();
//                     brake_signal == false;
//                 }
//                 else pid_local_planner_.ComputeVelocityCommands(cmd_vel);
//                 cmd_vel_pub_.publish(cmd_vel);
//                 ROS_INFO("cmd_x: (%f, %f)",cmd_vel.linear.x, cmd_vel.angular.z);
//                 rate.sleep();
//             }
//             std::unique_lock<std::mutex> lock(plan_var_mtx_);
//             new_global_plan_ = false;
//             lock.unlock();
//         }
//     }
// };

// int main(int argc, char** argv){
//     ros::init(argc, argv, "move_base");
//     ros::NodeHandle public_nh;
//     SimpleMoveBase move_base(public_nh);
//     ros::spin();
// }