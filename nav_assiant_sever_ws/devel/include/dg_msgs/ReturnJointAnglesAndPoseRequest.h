// Generated by gencpp from file dg_msgs/ReturnJointAnglesAndPoseRequest.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_RETURNJOINTANGLESANDPOSEREQUEST_H
#define DG_MSGS_MESSAGE_RETURNJOINTANGLESANDPOSEREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace dg_msgs
{
template <class ContainerAllocator>
struct ReturnJointAnglesAndPoseRequest_
{
  typedef ReturnJointAnglesAndPoseRequest_<ContainerAllocator> Type;

  ReturnJointAnglesAndPoseRequest_()
    : pose_camera_baselink()
    , file_path()
    , alter_count(0)
    , error_data(0.0)  {
    }
  ReturnJointAnglesAndPoseRequest_(const ContainerAllocator& _alloc)
    : pose_camera_baselink(_alloc)
    , file_path(_alloc)
    , alter_count(0)
    , error_data(0.0)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_camera_baselink_type;
  _pose_camera_baselink_type pose_camera_baselink;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _file_path_type;
  _file_path_type file_path;

   typedef int32_t _alter_count_type;
  _alter_count_type alter_count;

   typedef double _error_data_type;
  _error_data_type error_data;





  typedef boost::shared_ptr< ::dg_msgs::ReturnJointAnglesAndPoseRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dg_msgs::ReturnJointAnglesAndPoseRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ReturnJointAnglesAndPoseRequest_

typedef ::dg_msgs::ReturnJointAnglesAndPoseRequest_<std::allocator<void> > ReturnJointAnglesAndPoseRequest;

typedef boost::shared_ptr< ::dg_msgs::ReturnJointAnglesAndPoseRequest > ReturnJointAnglesAndPoseRequestPtr;
typedef boost::shared_ptr< ::dg_msgs::ReturnJointAnglesAndPoseRequest const> ReturnJointAnglesAndPoseRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dg_msgs::ReturnJointAnglesAndPoseRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dg_msgs::ReturnJointAnglesAndPoseRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dg_msgs::ReturnJointAnglesAndPoseRequest_<ContainerAllocator1> & lhs, const ::dg_msgs::ReturnJointAnglesAndPoseRequest_<ContainerAllocator2> & rhs)
{
  return lhs.pose_camera_baselink == rhs.pose_camera_baselink &&
    lhs.file_path == rhs.file_path &&
    lhs.alter_count == rhs.alter_count &&
    lhs.error_data == rhs.error_data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dg_msgs::ReturnJointAnglesAndPoseRequest_<ContainerAllocator1> & lhs, const ::dg_msgs::ReturnJointAnglesAndPoseRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dg_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::ReturnJointAnglesAndPoseRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::ReturnJointAnglesAndPoseRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::ReturnJointAnglesAndPoseRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::ReturnJointAnglesAndPoseRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::ReturnJointAnglesAndPoseRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::ReturnJointAnglesAndPoseRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dg_msgs::ReturnJointAnglesAndPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "46d8702fc163af79ac3d42624a67cf7a";
  }

  static const char* value(const ::dg_msgs::ReturnJointAnglesAndPoseRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x46d8702fc163af79ULL;
  static const uint64_t static_value2 = 0xac3d42624a67cf7aULL;
};

template<class ContainerAllocator>
struct DataType< ::dg_msgs::ReturnJointAnglesAndPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dg_msgs/ReturnJointAnglesAndPoseRequest";
  }

  static const char* value(const ::dg_msgs::ReturnJointAnglesAndPoseRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dg_msgs::ReturnJointAnglesAndPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Pose pose_camera_baselink\n"
"string file_path\n"
"int32 alter_count #邻近点返回数量\n"
"float64 error_data #误差范围\n"
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

  static const char* value(const ::dg_msgs::ReturnJointAnglesAndPoseRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dg_msgs::ReturnJointAnglesAndPoseRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pose_camera_baselink);
      stream.next(m.file_path);
      stream.next(m.alter_count);
      stream.next(m.error_data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ReturnJointAnglesAndPoseRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dg_msgs::ReturnJointAnglesAndPoseRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dg_msgs::ReturnJointAnglesAndPoseRequest_<ContainerAllocator>& v)
  {
    s << indent << "pose_camera_baselink: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose_camera_baselink);
    s << indent << "file_path: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.file_path);
    s << indent << "alter_count: ";
    Printer<int32_t>::stream(s, indent + "  ", v.alter_count);
    s << indent << "error_data: ";
    Printer<double>::stream(s, indent + "  ", v.error_data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DG_MSGS_MESSAGE_RETURNJOINTANGLESANDPOSEREQUEST_H
