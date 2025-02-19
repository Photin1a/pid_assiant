// Generated by gencpp from file dg_msgs/CarBaseMoveTaskAction.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_CARBASEMOVETASKACTION_H
#define DG_MSGS_MESSAGE_CARBASEMOVETASKACTION_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <dg_msgs/CarBaseMoveTaskActionGoal.h>
#include <dg_msgs/CarBaseMoveTaskActionResult.h>
#include <dg_msgs/CarBaseMoveTaskActionFeedback.h>

namespace dg_msgs
{
template <class ContainerAllocator>
struct CarBaseMoveTaskAction_
{
  typedef CarBaseMoveTaskAction_<ContainerAllocator> Type;

  CarBaseMoveTaskAction_()
    : action_goal()
    , action_result()
    , action_feedback()  {
    }
  CarBaseMoveTaskAction_(const ContainerAllocator& _alloc)
    : action_goal(_alloc)
    , action_result(_alloc)
    , action_feedback(_alloc)  {
  (void)_alloc;
    }



   typedef  ::dg_msgs::CarBaseMoveTaskActionGoal_<ContainerAllocator>  _action_goal_type;
  _action_goal_type action_goal;

   typedef  ::dg_msgs::CarBaseMoveTaskActionResult_<ContainerAllocator>  _action_result_type;
  _action_result_type action_result;

   typedef  ::dg_msgs::CarBaseMoveTaskActionFeedback_<ContainerAllocator>  _action_feedback_type;
  _action_feedback_type action_feedback;





  typedef boost::shared_ptr< ::dg_msgs::CarBaseMoveTaskAction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dg_msgs::CarBaseMoveTaskAction_<ContainerAllocator> const> ConstPtr;

}; // struct CarBaseMoveTaskAction_

typedef ::dg_msgs::CarBaseMoveTaskAction_<std::allocator<void> > CarBaseMoveTaskAction;

typedef boost::shared_ptr< ::dg_msgs::CarBaseMoveTaskAction > CarBaseMoveTaskActionPtr;
typedef boost::shared_ptr< ::dg_msgs::CarBaseMoveTaskAction const> CarBaseMoveTaskActionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dg_msgs::CarBaseMoveTaskAction_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dg_msgs::CarBaseMoveTaskAction_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dg_msgs::CarBaseMoveTaskAction_<ContainerAllocator1> & lhs, const ::dg_msgs::CarBaseMoveTaskAction_<ContainerAllocator2> & rhs)
{
  return lhs.action_goal == rhs.action_goal &&
    lhs.action_result == rhs.action_result &&
    lhs.action_feedback == rhs.action_feedback;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dg_msgs::CarBaseMoveTaskAction_<ContainerAllocator1> & lhs, const ::dg_msgs::CarBaseMoveTaskAction_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dg_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::CarBaseMoveTaskAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::CarBaseMoveTaskAction_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::CarBaseMoveTaskAction_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::CarBaseMoveTaskAction_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::CarBaseMoveTaskAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::CarBaseMoveTaskAction_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dg_msgs::CarBaseMoveTaskAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e9bb1d4b838f5d8738e44d540b94d7a3";
  }

  static const char* value(const ::dg_msgs::CarBaseMoveTaskAction_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe9bb1d4b838f5d87ULL;
  static const uint64_t static_value2 = 0x38e44d540b94d7a3ULL;
};

template<class ContainerAllocator>
struct DataType< ::dg_msgs::CarBaseMoveTaskAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dg_msgs/CarBaseMoveTaskAction";
  }

  static const char* value(const ::dg_msgs::CarBaseMoveTaskAction_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dg_msgs::CarBaseMoveTaskAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"CarBaseMoveTaskActionGoal action_goal\n"
"CarBaseMoveTaskActionResult action_result\n"
"CarBaseMoveTaskActionFeedback action_feedback\n"
"\n"
"================================================================================\n"
"MSG: dg_msgs/CarBaseMoveTaskActionGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"CarBaseMoveTaskGoal goal\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: dg_msgs/CarBaseMoveTaskGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"geometry_msgs/PoseStamped target_pose       # 目的地    goal\n"
"string target_type                          # 目的地类型， train_head车头，elevator电梯，charger充电桩\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: dg_msgs/CarBaseMoveTaskActionResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"CarBaseMoveTaskResult result\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalStatus\n"
"GoalID goal_id\n"
"uint8 status\n"
"uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n"
"uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n"
"uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n"
"                            #   and has since completed its execution (Terminal State)\n"
"uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n"
"uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n"
"                            #    to some failure (Terminal State)\n"
"uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n"
"                            #    because the goal was unattainable or invalid (Terminal State)\n"
"uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n"
"                            #    and has not yet completed execution\n"
"uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n"
"                            #    but the action server has not yet confirmed that the goal is canceled\n"
"uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n"
"                            #    and was successfully cancelled (Terminal State)\n"
"uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n"
"                            #    sent over the wire by an action server\n"
"\n"
"#Allow for the user to associate a string with GoalStatus for debugging\n"
"string text\n"
"\n"
"\n"
"================================================================================\n"
"MSG: dg_msgs/CarBaseMoveTaskResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"float32 time_cost                           # 到达耗时  result\n"
"UniversalStateInfo  state_info\n"
"\n"
"================================================================================\n"
"MSG: dg_msgs/UniversalStateInfo\n"
"int32 state_index   # 状态索引值：统一0是正常，其他数字自定义\n"
"string node_name    # 当前节点名\n"
"string state_msgs   # 附加信息，相当于additional_msgs\n"
"================================================================================\n"
"MSG: dg_msgs/CarBaseMoveTaskActionFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"CarBaseMoveTaskFeedback feedback\n"
"\n"
"================================================================================\n"
"MSG: dg_msgs/CarBaseMoveTaskFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"float32 remaining_dis                       # 剩余距离  feedback\n"
;
  }

  static const char* value(const ::dg_msgs::CarBaseMoveTaskAction_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dg_msgs::CarBaseMoveTaskAction_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action_goal);
      stream.next(m.action_result);
      stream.next(m.action_feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CarBaseMoveTaskAction_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dg_msgs::CarBaseMoveTaskAction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dg_msgs::CarBaseMoveTaskAction_<ContainerAllocator>& v)
  {
    s << indent << "action_goal: ";
    s << std::endl;
    Printer< ::dg_msgs::CarBaseMoveTaskActionGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.action_goal);
    s << indent << "action_result: ";
    s << std::endl;
    Printer< ::dg_msgs::CarBaseMoveTaskActionResult_<ContainerAllocator> >::stream(s, indent + "  ", v.action_result);
    s << indent << "action_feedback: ";
    s << std::endl;
    Printer< ::dg_msgs::CarBaseMoveTaskActionFeedback_<ContainerAllocator> >::stream(s, indent + "  ", v.action_feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DG_MSGS_MESSAGE_CARBASEMOVETASKACTION_H
