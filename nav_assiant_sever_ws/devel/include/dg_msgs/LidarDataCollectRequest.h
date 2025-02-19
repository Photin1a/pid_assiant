// Generated by gencpp from file dg_msgs/LidarDataCollectRequest.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_LIDARDATACOLLECTREQUEST_H
#define DG_MSGS_MESSAGE_LIDARDATACOLLECTREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dg_msgs
{
template <class ContainerAllocator>
struct LidarDataCollectRequest_
{
  typedef LidarDataCollectRequest_<ContainerAllocator> Type;

  LidarDataCollectRequest_()
    : topic_lidar()
    , collect_frames(0)
    , data_type(false)
    , save_path()  {
    }
  LidarDataCollectRequest_(const ContainerAllocator& _alloc)
    : topic_lidar(_alloc)
    , collect_frames(0)
    , data_type(false)
    , save_path(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _topic_lidar_type;
  _topic_lidar_type topic_lidar;

   typedef int32_t _collect_frames_type;
  _collect_frames_type collect_frames;

   typedef uint8_t _data_type_type;
  _data_type_type data_type;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _save_path_type;
  _save_path_type save_path;





  typedef boost::shared_ptr< ::dg_msgs::LidarDataCollectRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dg_msgs::LidarDataCollectRequest_<ContainerAllocator> const> ConstPtr;

}; // struct LidarDataCollectRequest_

typedef ::dg_msgs::LidarDataCollectRequest_<std::allocator<void> > LidarDataCollectRequest;

typedef boost::shared_ptr< ::dg_msgs::LidarDataCollectRequest > LidarDataCollectRequestPtr;
typedef boost::shared_ptr< ::dg_msgs::LidarDataCollectRequest const> LidarDataCollectRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dg_msgs::LidarDataCollectRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dg_msgs::LidarDataCollectRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dg_msgs::LidarDataCollectRequest_<ContainerAllocator1> & lhs, const ::dg_msgs::LidarDataCollectRequest_<ContainerAllocator2> & rhs)
{
  return lhs.topic_lidar == rhs.topic_lidar &&
    lhs.collect_frames == rhs.collect_frames &&
    lhs.data_type == rhs.data_type &&
    lhs.save_path == rhs.save_path;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dg_msgs::LidarDataCollectRequest_<ContainerAllocator1> & lhs, const ::dg_msgs::LidarDataCollectRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dg_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::LidarDataCollectRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::LidarDataCollectRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::LidarDataCollectRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::LidarDataCollectRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::LidarDataCollectRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::LidarDataCollectRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dg_msgs::LidarDataCollectRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dad5d90debc761a32f2a17a1e7a0acd5";
  }

  static const char* value(const ::dg_msgs::LidarDataCollectRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdad5d90debc761a3ULL;
  static const uint64_t static_value2 = 0x2f2a17a1e7a0acd5ULL;
};

template<class ContainerAllocator>
struct DataType< ::dg_msgs::LidarDataCollectRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dg_msgs/LidarDataCollectRequest";
  }

  static const char* value(const ::dg_msgs::LidarDataCollectRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dg_msgs::LidarDataCollectRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string topic_lidar # 雷达话题名\n"
"int32 collect_frames # 需要采集的帧数\n"
"bool data_type # 雷达数据类型: 0: 默认livox CustomMsg, 1: ros pcd2\n"
"string save_path # 保存路径\n"
;
  }

  static const char* value(const ::dg_msgs::LidarDataCollectRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dg_msgs::LidarDataCollectRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.topic_lidar);
      stream.next(m.collect_frames);
      stream.next(m.data_type);
      stream.next(m.save_path);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LidarDataCollectRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dg_msgs::LidarDataCollectRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dg_msgs::LidarDataCollectRequest_<ContainerAllocator>& v)
  {
    s << indent << "topic_lidar: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.topic_lidar);
    s << indent << "collect_frames: ";
    Printer<int32_t>::stream(s, indent + "  ", v.collect_frames);
    s << indent << "data_type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.data_type);
    s << indent << "save_path: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.save_path);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DG_MSGS_MESSAGE_LIDARDATACOLLECTREQUEST_H
