// Generated by gencpp from file dg_msgs/CorrectionPoint.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_CORRECTIONPOINT_H
#define DG_MSGS_MESSAGE_CORRECTIONPOINT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>

namespace dg_msgs
{
template <class ContainerAllocator>
struct CorrectionPoint_
{
  typedef CorrectionPoint_<ContainerAllocator> Type;

  CorrectionPoint_()
    : number()
    , pose()
    , offset(0.0)
    , custom_message()  {
    }
  CorrectionPoint_(const ContainerAllocator& _alloc)
    : number(_alloc)
    , pose(_alloc)
    , offset(0.0)
    , custom_message(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _number_type;
  _number_type number;

   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef float _offset_type;
  _offset_type offset;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _custom_message_type;
  _custom_message_type custom_message;





  typedef boost::shared_ptr< ::dg_msgs::CorrectionPoint_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dg_msgs::CorrectionPoint_<ContainerAllocator> const> ConstPtr;

}; // struct CorrectionPoint_

typedef ::dg_msgs::CorrectionPoint_<std::allocator<void> > CorrectionPoint;

typedef boost::shared_ptr< ::dg_msgs::CorrectionPoint > CorrectionPointPtr;
typedef boost::shared_ptr< ::dg_msgs::CorrectionPoint const> CorrectionPointConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dg_msgs::CorrectionPoint_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dg_msgs::CorrectionPoint_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dg_msgs::CorrectionPoint_<ContainerAllocator1> & lhs, const ::dg_msgs::CorrectionPoint_<ContainerAllocator2> & rhs)
{
  return lhs.number == rhs.number &&
    lhs.pose == rhs.pose &&
    lhs.offset == rhs.offset &&
    lhs.custom_message == rhs.custom_message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dg_msgs::CorrectionPoint_<ContainerAllocator1> & lhs, const ::dg_msgs::CorrectionPoint_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dg_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::CorrectionPoint_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::CorrectionPoint_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::CorrectionPoint_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::CorrectionPoint_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::CorrectionPoint_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::CorrectionPoint_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dg_msgs::CorrectionPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c6604cbe4012a19e8a5d0b619586f1ea";
  }

  static const char* value(const ::dg_msgs::CorrectionPoint_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc6604cbe4012a19eULL;
  static const uint64_t static_value2 = 0x8a5d0b619586f1eaULL;
};

template<class ContainerAllocator>
struct DataType< ::dg_msgs::CorrectionPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dg_msgs/CorrectionPoint";
  }

  static const char* value(const ::dg_msgs::CorrectionPoint_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dg_msgs::CorrectionPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string number                                   # 设备组编号\n"
"geometry_msgs/PoseStamped pose                  # 相机目标点的pose\n"
"float32 offset                                  # 升降柱伸缩量\n"
"string custom_message\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
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
;
  }

  static const char* value(const ::dg_msgs::CorrectionPoint_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dg_msgs::CorrectionPoint_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.number);
      stream.next(m.pose);
      stream.next(m.offset);
      stream.next(m.custom_message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CorrectionPoint_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dg_msgs::CorrectionPoint_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dg_msgs::CorrectionPoint_<ContainerAllocator>& v)
  {
    s << indent << "number: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.number);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "offset: ";
    Printer<float>::stream(s, indent + "  ", v.offset);
    s << indent << "custom_message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.custom_message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DG_MSGS_MESSAGE_CORRECTIONPOINT_H
