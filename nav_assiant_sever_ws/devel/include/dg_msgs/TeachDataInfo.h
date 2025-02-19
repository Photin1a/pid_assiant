// Generated by gencpp from file dg_msgs/TeachDataInfo.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_TEACHDATAINFO_H
#define DG_MSGS_MESSAGE_TEACHDATAINFO_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PoseArray.h>
#include <dg_msgs/CorrectionPoint.h>
#include <dg_msgs/CropBox.h>
#include <dg_msgs/CropBox.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PoseStamped.h>
#include <trajectory_msgs/JointTrajectoryPoint.h>

namespace dg_msgs
{
template <class ContainerAllocator>
struct TeachDataInfo_
{
  typedef TeachDataInfo_<ContainerAllocator> Type;

  TeachDataInfo_()
    : pose_stop_trainhead()
    , pose_stop_region()
    , model_type(0)
    , model_path()
    , camera_region()
    , region_type(0)
    , matrix_region_init()
    , matrix_region_trainhead()
    , reg_type(0)
    , lidar_topic()
    , correction_point()
    , box_target()
    , box_source()
    , cruising_route_type(0)
    , geometry_completion_type(0)
    , pose_regionframe_region()
    , pose_regionframe_trainhead()
    , correction_joint()
    , region_frame_path()  {
    }
  TeachDataInfo_(const ContainerAllocator& _alloc)
    : pose_stop_trainhead(_alloc)
    , pose_stop_region(_alloc)
    , model_type(0)
    , model_path(_alloc)
    , camera_region(_alloc)
    , region_type(0)
    , matrix_region_init(_alloc)
    , matrix_region_trainhead(_alloc)
    , reg_type(0)
    , lidar_topic(_alloc)
    , correction_point(_alloc)
    , box_target(_alloc)
    , box_source(_alloc)
    , cruising_route_type(0)
    , geometry_completion_type(0)
    , pose_regionframe_region(_alloc)
    , pose_regionframe_trainhead(_alloc)
    , correction_joint(_alloc)
    , region_frame_path(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _pose_stop_trainhead_type;
  _pose_stop_trainhead_type pose_stop_trainhead;

   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _pose_stop_region_type;
  _pose_stop_region_type pose_stop_region;

   typedef int32_t _model_type_type;
  _model_type_type model_type;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _model_path_type;
  _model_path_type model_path;

   typedef  ::geometry_msgs::PoseArray_<ContainerAllocator>  _camera_region_type;
  _camera_region_type camera_region;

   typedef int32_t _region_type_type;
  _region_type_type region_type;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _matrix_region_init_type;
  _matrix_region_init_type matrix_region_init;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _matrix_region_trainhead_type;
  _matrix_region_trainhead_type matrix_region_trainhead;

   typedef int32_t _reg_type_type;
  _reg_type_type reg_type;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _lidar_topic_type;
  _lidar_topic_type lidar_topic;

   typedef  ::dg_msgs::CorrectionPoint_<ContainerAllocator>  _correction_point_type;
  _correction_point_type correction_point;

   typedef  ::dg_msgs::CropBox_<ContainerAllocator>  _box_target_type;
  _box_target_type box_target;

   typedef  ::dg_msgs::CropBox_<ContainerAllocator>  _box_source_type;
  _box_source_type box_source;

   typedef int32_t _cruising_route_type_type;
  _cruising_route_type_type cruising_route_type;

   typedef int32_t _geometry_completion_type_type;
  _geometry_completion_type_type geometry_completion_type;

   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _pose_regionframe_region_type;
  _pose_regionframe_region_type pose_regionframe_region;

   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _pose_regionframe_trainhead_type;
  _pose_regionframe_trainhead_type pose_regionframe_trainhead;

   typedef std::vector< ::trajectory_msgs::JointTrajectoryPoint_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::trajectory_msgs::JointTrajectoryPoint_<ContainerAllocator> >> _correction_joint_type;
  _correction_joint_type correction_joint;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _region_frame_path_type;
  _region_frame_path_type region_frame_path;





  typedef boost::shared_ptr< ::dg_msgs::TeachDataInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dg_msgs::TeachDataInfo_<ContainerAllocator> const> ConstPtr;

}; // struct TeachDataInfo_

typedef ::dg_msgs::TeachDataInfo_<std::allocator<void> > TeachDataInfo;

typedef boost::shared_ptr< ::dg_msgs::TeachDataInfo > TeachDataInfoPtr;
typedef boost::shared_ptr< ::dg_msgs::TeachDataInfo const> TeachDataInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dg_msgs::TeachDataInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dg_msgs::TeachDataInfo_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dg_msgs::TeachDataInfo_<ContainerAllocator1> & lhs, const ::dg_msgs::TeachDataInfo_<ContainerAllocator2> & rhs)
{
  return lhs.pose_stop_trainhead == rhs.pose_stop_trainhead &&
    lhs.pose_stop_region == rhs.pose_stop_region &&
    lhs.model_type == rhs.model_type &&
    lhs.model_path == rhs.model_path &&
    lhs.camera_region == rhs.camera_region &&
    lhs.region_type == rhs.region_type &&
    lhs.matrix_region_init == rhs.matrix_region_init &&
    lhs.matrix_region_trainhead == rhs.matrix_region_trainhead &&
    lhs.reg_type == rhs.reg_type &&
    lhs.lidar_topic == rhs.lidar_topic &&
    lhs.correction_point == rhs.correction_point &&
    lhs.box_target == rhs.box_target &&
    lhs.box_source == rhs.box_source &&
    lhs.cruising_route_type == rhs.cruising_route_type &&
    lhs.geometry_completion_type == rhs.geometry_completion_type &&
    lhs.pose_regionframe_region == rhs.pose_regionframe_region &&
    lhs.pose_regionframe_trainhead == rhs.pose_regionframe_trainhead &&
    lhs.correction_joint == rhs.correction_joint &&
    lhs.region_frame_path == rhs.region_frame_path;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dg_msgs::TeachDataInfo_<ContainerAllocator1> & lhs, const ::dg_msgs::TeachDataInfo_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dg_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::TeachDataInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::TeachDataInfo_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::TeachDataInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::TeachDataInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::TeachDataInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::TeachDataInfo_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dg_msgs::TeachDataInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "59cc7fe46999dbd644086ba85abbce76";
  }

  static const char* value(const ::dg_msgs::TeachDataInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x59cc7fe46999dbd6ULL;
  static const uint64_t static_value2 = 0x44086ba85abbce76ULL;
};

template<class ContainerAllocator>
struct DataType< ::dg_msgs::TeachDataInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dg_msgs/TeachDataInfo";
  }

  static const char* value(const ::dg_msgs::TeachDataInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dg_msgs::TeachDataInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/PoseStamped pose_stop_trainhead\n"
"geometry_msgs/PoseStamped pose_stop_region\n"
"int32                     model_type\n"
"string                    model_path\n"
"geometry_msgs/PoseArray   camera_region\n"
"int32                     region_type           # 区域类型，0直接复用，1镜像复用，2旋转180复用\n"
"float64[]                 matrix_region_init\n"
"float64[]                 matrix_region_trainhead\n"
"int32                     reg_type              # 配准采集数据类型， 0为相机，1为雷达\n"
"string                    lidar_topic\n"
"CorrectionPoint           correction_point\n"
"CropBox                   box_target\n"
"CropBox                   box_source\n"
"int32                     cruising_route_type\n"
"int32                     geometry_completion_type\n"
"geometry_msgs/PoseStamped pose_regionframe_region\n"
"geometry_msgs/PoseStamped pose_regionframe_trainhead\n"
"trajectory_msgs/JointTrajectoryPoint[]                          correction_joint\n"
"string                      region_frame_path\n"
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
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseArray\n"
"# An array of poses with a header for global reference.\n"
"\n"
"Header header\n"
"\n"
"Pose[] poses\n"
"\n"
"================================================================================\n"
"MSG: dg_msgs/CorrectionPoint\n"
"string number                                   # 设备组编号\n"
"geometry_msgs/PoseStamped pose                  # 相机目标点的pose\n"
"float32 offset                                  # 升降柱伸缩量\n"
"string custom_message\n"
"================================================================================\n"
"MSG: dg_msgs/CropBox\n"
"float32[] center_\n"
"float32[] R_euler\n"
"float32[] extent_\n"
"================================================================================\n"
"MSG: trajectory_msgs/JointTrajectoryPoint\n"
"# Each trajectory point specifies either positions[, velocities[, accelerations]]\n"
"# or positions[, effort] for the trajectory to be executed.\n"
"# All specified values are in the same order as the joint names in JointTrajectory.msg\n"
"\n"
"float64[] positions\n"
"float64[] velocities\n"
"float64[] accelerations\n"
"float64[] effort\n"
"duration time_from_start\n"
;
  }

  static const char* value(const ::dg_msgs::TeachDataInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dg_msgs::TeachDataInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pose_stop_trainhead);
      stream.next(m.pose_stop_region);
      stream.next(m.model_type);
      stream.next(m.model_path);
      stream.next(m.camera_region);
      stream.next(m.region_type);
      stream.next(m.matrix_region_init);
      stream.next(m.matrix_region_trainhead);
      stream.next(m.reg_type);
      stream.next(m.lidar_topic);
      stream.next(m.correction_point);
      stream.next(m.box_target);
      stream.next(m.box_source);
      stream.next(m.cruising_route_type);
      stream.next(m.geometry_completion_type);
      stream.next(m.pose_regionframe_region);
      stream.next(m.pose_regionframe_trainhead);
      stream.next(m.correction_joint);
      stream.next(m.region_frame_path);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TeachDataInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dg_msgs::TeachDataInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dg_msgs::TeachDataInfo_<ContainerAllocator>& v)
  {
    s << indent << "pose_stop_trainhead: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.pose_stop_trainhead);
    s << indent << "pose_stop_region: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.pose_stop_region);
    s << indent << "model_type: ";
    Printer<int32_t>::stream(s, indent + "  ", v.model_type);
    s << indent << "model_path: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.model_path);
    s << indent << "camera_region: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseArray_<ContainerAllocator> >::stream(s, indent + "  ", v.camera_region);
    s << indent << "region_type: ";
    Printer<int32_t>::stream(s, indent + "  ", v.region_type);
    s << indent << "matrix_region_init[]" << std::endl;
    for (size_t i = 0; i < v.matrix_region_init.size(); ++i)
    {
      s << indent << "  matrix_region_init[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.matrix_region_init[i]);
    }
    s << indent << "matrix_region_trainhead[]" << std::endl;
    for (size_t i = 0; i < v.matrix_region_trainhead.size(); ++i)
    {
      s << indent << "  matrix_region_trainhead[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.matrix_region_trainhead[i]);
    }
    s << indent << "reg_type: ";
    Printer<int32_t>::stream(s, indent + "  ", v.reg_type);
    s << indent << "lidar_topic: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.lidar_topic);
    s << indent << "correction_point: ";
    s << std::endl;
    Printer< ::dg_msgs::CorrectionPoint_<ContainerAllocator> >::stream(s, indent + "  ", v.correction_point);
    s << indent << "box_target: ";
    s << std::endl;
    Printer< ::dg_msgs::CropBox_<ContainerAllocator> >::stream(s, indent + "  ", v.box_target);
    s << indent << "box_source: ";
    s << std::endl;
    Printer< ::dg_msgs::CropBox_<ContainerAllocator> >::stream(s, indent + "  ", v.box_source);
    s << indent << "cruising_route_type: ";
    Printer<int32_t>::stream(s, indent + "  ", v.cruising_route_type);
    s << indent << "geometry_completion_type: ";
    Printer<int32_t>::stream(s, indent + "  ", v.geometry_completion_type);
    s << indent << "pose_regionframe_region: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.pose_regionframe_region);
    s << indent << "pose_regionframe_trainhead: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.pose_regionframe_trainhead);
    s << indent << "correction_joint[]" << std::endl;
    for (size_t i = 0; i < v.correction_joint.size(); ++i)
    {
      s << indent << "  correction_joint[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::trajectory_msgs::JointTrajectoryPoint_<ContainerAllocator> >::stream(s, indent + "    ", v.correction_joint[i]);
    }
    s << indent << "region_frame_path: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.region_frame_path);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DG_MSGS_MESSAGE_TEACHDATAINFO_H
