#ifndef BASE_LOCAL_PLANNER_H
#define BASE_LOCAL_PLANNER_H
// #include <geometry_msgs/Pose.h>
#include <string>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/PoseStamped.h>
#include <tf2_ros/buffer.h>

/**
 * @class BaseLocalPlanner
 * @brief Provides an interface for local planners used in navigation. All local
 * planners written as plugins for the navigation stack must adhere to this
 * interface.
 */
class BaseLocalPlanner
{
public:
  /**
   * @brief  Given the current position, orientation, and velocity of the robot,
   * compute velocity commands to send to the base
   * @param cmd_vel Will be filled with the velocity command to be passed to the
   * robot base
   * @return True if a valid velocity command was found, false otherwise
   */
  virtual bool ComputeVelocityCommands(geometry_msgs::Twist &cmd_vel) = 0;

  /**
   * @brief  Check if the goal pose has been achieved by the local planner
   * @return True if achieved, false otherwise
   */
  virtual bool IsPositionReached() = 0;

  virtual bool IsOrientationtionReached() = 0;

  virtual bool IsGoalReached() = 0;

  /**
   * @brief  Check if the Robot is static now.
   * @return True if static, false otherwise
   */
  virtual bool IsStatic() = 0;

  /**
   * @brief  Set the plan that the local planner is following
   * @param plan The plan to pass to the local planner
   * @return True if the plan was updated successfully, false otherwise
   */
  virtual bool SetPlan(std::vector<geometry_msgs::PoseStamped> *global_plan) = 0;

  /**
   * @brief  Constructs the local planner
   * @param name The name to give this instance of the local planner
   * @param tf A pointer to a transform listener
   * @param costmap_ros The cost map to use for assigning costs to local plans
   */
  virtual void Initialize(const std::string &name, tf2_ros::Buffer *tf) = 0;

  /**
   * @brief  Virtual destructor for the interface
   */
  virtual ~BaseLocalPlanner() {}

protected:
  BaseLocalPlanner() {}
};

#endif
