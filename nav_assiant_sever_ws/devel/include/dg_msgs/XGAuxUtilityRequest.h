// Generated by gencpp from file dg_msgs/XGAuxUtilityRequest.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_XGAUXUTILITYREQUEST_H
#define DG_MSGS_MESSAGE_XGAUXUTILITYREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PoseStamped.h>

namespace dg_msgs
{
template <class ContainerAllocator>
struct XGAuxUtilityRequest_
{
  typedef XGAuxUtilityRequest_<ContainerAllocator> Type;

  XGAuxUtilityRequest_()
    : reg_pose()
    , teach_pose()  {
    }
  XGAuxUtilityRequest_(const ContainerAllocator& _alloc)
    : reg_pose(_alloc)
    , teach_pose(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _reg_pose_type;
  _reg_pose_type reg_pose;

   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _teach_pose_type;
  _teach_pose_type teach_pose;





  typedef boost::shared_ptr< ::dg_msgs::XGAuxUtilityRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dg_msgs::XGAuxUtilityRequest_<ContainerAllocator> const> ConstPtr;

}; // struct XGAuxUtilityRequest_

typedef ::dg_msgs::XGAuxUtilityRequest_<std::allocator<void> > XGAuxUtilityRequest;

typedef boost::shared_ptr< ::dg_msgs::XGAuxUtilityRequest > XGAuxUtilityRequestPtr;
typedef boost::shared_ptr< ::dg_msgs::XGAuxUtilityRequest const> XGAuxUtilityRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dg_msgs::XGAuxUtilityRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dg_msgs::XGAuxUtilityRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dg_msgs::XGAuxUtilityRequest_<ContainerAllocator1> & lhs, const ::dg_msgs::XGAuxUtilityRequest_<ContainerAllocator2> & rhs)
{
  return lhs.reg_pose == rhs.reg_pose &&
    lhs.teach_pose == rhs.teach_pose;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dg_msgs::XGAuxUtilityRequest_<ContainerAllocator1> & lhs, const ::dg_msgs::XGAuxUtilityRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dg_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::XGAuxUtilityRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::XGAuxUtilityRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::XGAuxUtilityRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::XGAuxUtilityRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::XGAuxUtilityRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::XGAuxUtilityRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dg_msgs::XGAuxUtilityRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6fae053f29583b77e6a367184b6a915b";
  }

  static const char* value(const ::dg_msgs::XGAuxUtilityRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6fae053f29583b77ULL;
  static const uint64_t static_value2 = 0xe6a367184b6a915bULL;
};

template<class ContainerAllocator>
struct DataType< ::dg_msgs::XGAuxUtilityRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dg_msgs/XGAuxUtilityRequest";
  }

  static const char* value(const ::dg_msgs::XGAuxUtilityRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dg_msgs::XGAuxUtilityRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# 仙工底盘的辅助服务，用于中心节点和底盘之间交互媒介\n"
"\n"
"# 内容一：用于转化的pose\n"
"geometry_msgs/PoseStamped reg_pose          # 配准结果pose，从中心节点处传入\n"
"geometry_msgs/PoseStamped teach_pose        # 当时示校时的pose，从中心节点传入 \n"
"\n"
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

  static const char* value(const ::dg_msgs::XGAuxUtilityRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dg_msgs::XGAuxUtilityRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.reg_pose);
      stream.next(m.teach_pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct XGAuxUtilityRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dg_msgs::XGAuxUtilityRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dg_msgs::XGAuxUtilityRequest_<ContainerAllocator>& v)
  {
    s << indent << "reg_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.reg_pose);
    s << indent << "teach_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.teach_pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DG_MSGS_MESSAGE_XGAUXUTILITYREQUEST_H
