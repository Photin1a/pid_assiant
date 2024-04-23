// Generated by gencpp from file dg_msgs/CurrentCorrectionPointActionGoal.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_CURRENTCORRECTIONPOINTACTIONGOAL_H
#define DG_MSGS_MESSAGE_CURRENTCORRECTIONPOINTACTIONGOAL_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <dg_msgs/CurrentCorrectionPointGoal.h>

namespace dg_msgs
{
template <class ContainerAllocator>
struct CurrentCorrectionPointActionGoal_
{
  typedef CurrentCorrectionPointActionGoal_<ContainerAllocator> Type;

  CurrentCorrectionPointActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  CurrentCorrectionPointActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::dg_msgs::CurrentCorrectionPointGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::dg_msgs::CurrentCorrectionPointActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dg_msgs::CurrentCorrectionPointActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct CurrentCorrectionPointActionGoal_

typedef ::dg_msgs::CurrentCorrectionPointActionGoal_<std::allocator<void> > CurrentCorrectionPointActionGoal;

typedef boost::shared_ptr< ::dg_msgs::CurrentCorrectionPointActionGoal > CurrentCorrectionPointActionGoalPtr;
typedef boost::shared_ptr< ::dg_msgs::CurrentCorrectionPointActionGoal const> CurrentCorrectionPointActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dg_msgs::CurrentCorrectionPointActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dg_msgs::CurrentCorrectionPointActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dg_msgs::CurrentCorrectionPointActionGoal_<ContainerAllocator1> & lhs, const ::dg_msgs::CurrentCorrectionPointActionGoal_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.goal_id == rhs.goal_id &&
    lhs.goal == rhs.goal;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dg_msgs::CurrentCorrectionPointActionGoal_<ContainerAllocator1> & lhs, const ::dg_msgs::CurrentCorrectionPointActionGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dg_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::CurrentCorrectionPointActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::CurrentCorrectionPointActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::CurrentCorrectionPointActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::CurrentCorrectionPointActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::CurrentCorrectionPointActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::CurrentCorrectionPointActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dg_msgs::CurrentCorrectionPointActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9d247aead892da397d6940668b38c847";
  }

  static const char* value(const ::dg_msgs::CurrentCorrectionPointActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9d247aead892da39ULL;
  static const uint64_t static_value2 = 0x7d6940668b38c847ULL;
};

template<class ContainerAllocator>
struct DataType< ::dg_msgs::CurrentCorrectionPointActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dg_msgs/CurrentCorrectionPointActionGoal";
  }

  static const char* value(const ::dg_msgs::CurrentCorrectionPointActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dg_msgs::CurrentCorrectionPointActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"CurrentCorrectionPointGoal goal\n"
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
"MSG: dg_msgs/CurrentCorrectionPointGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"string number       # 设备编码\n"
;
  }

  static const char* value(const ::dg_msgs::CurrentCorrectionPointActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dg_msgs::CurrentCorrectionPointActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CurrentCorrectionPointActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dg_msgs::CurrentCorrectionPointActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dg_msgs::CurrentCorrectionPointActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::dg_msgs::CurrentCorrectionPointGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DG_MSGS_MESSAGE_CURRENTCORRECTIONPOINTACTIONGOAL_H
