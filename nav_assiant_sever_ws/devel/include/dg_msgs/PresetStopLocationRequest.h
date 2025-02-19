// Generated by gencpp from file dg_msgs/PresetStopLocationRequest.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_PRESETSTOPLOCATIONREQUEST_H
#define DG_MSGS_MESSAGE_PRESETSTOPLOCATIONREQUEST_H


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
struct PresetStopLocationRequest_
{
  typedef PresetStopLocationRequest_<ContainerAllocator> Type;

  PresetStopLocationRequest_()
    : lidar_topic()
    , model_path()
    , model_id(0)
    , stop_id(0)  {
    }
  PresetStopLocationRequest_(const ContainerAllocator& _alloc)
    : lidar_topic(_alloc)
    , model_path(_alloc)
    , model_id(0)
    , stop_id(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _lidar_topic_type;
  _lidar_topic_type lidar_topic;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _model_path_type;
  _model_path_type model_path;

   typedef int32_t _model_id_type;
  _model_id_type model_id;

   typedef int32_t _stop_id_type;
  _stop_id_type stop_id;





  typedef boost::shared_ptr< ::dg_msgs::PresetStopLocationRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dg_msgs::PresetStopLocationRequest_<ContainerAllocator> const> ConstPtr;

}; // struct PresetStopLocationRequest_

typedef ::dg_msgs::PresetStopLocationRequest_<std::allocator<void> > PresetStopLocationRequest;

typedef boost::shared_ptr< ::dg_msgs::PresetStopLocationRequest > PresetStopLocationRequestPtr;
typedef boost::shared_ptr< ::dg_msgs::PresetStopLocationRequest const> PresetStopLocationRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dg_msgs::PresetStopLocationRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dg_msgs::PresetStopLocationRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dg_msgs::PresetStopLocationRequest_<ContainerAllocator1> & lhs, const ::dg_msgs::PresetStopLocationRequest_<ContainerAllocator2> & rhs)
{
  return lhs.lidar_topic == rhs.lidar_topic &&
    lhs.model_path == rhs.model_path &&
    lhs.model_id == rhs.model_id &&
    lhs.stop_id == rhs.stop_id;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dg_msgs::PresetStopLocationRequest_<ContainerAllocator1> & lhs, const ::dg_msgs::PresetStopLocationRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dg_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::PresetStopLocationRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::PresetStopLocationRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::PresetStopLocationRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::PresetStopLocationRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::PresetStopLocationRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::PresetStopLocationRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dg_msgs::PresetStopLocationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "96abcff27f87af8028c35ff3f8baf81b";
  }

  static const char* value(const ::dg_msgs::PresetStopLocationRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x96abcff27f87af80ULL;
  static const uint64_t static_value2 = 0x28c35ff3f8baf81bULL;
};

template<class ContainerAllocator>
struct DataType< ::dg_msgs::PresetStopLocationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dg_msgs/PresetStopLocationRequest";
  }

  static const char* value(const ::dg_msgs::PresetStopLocationRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dg_msgs::PresetStopLocationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# 预置停车点位置，此时并不能获取准确的停车点位置，需离线处理后上传\n"
"string lidar_topic      # 雷达标识\n"
"string model_path       # 模型路径\n"
"int32 model_id          # 模型ID\n"
"int32 stop_id           # 停车点ID\n"
;
  }

  static const char* value(const ::dg_msgs::PresetStopLocationRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dg_msgs::PresetStopLocationRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.lidar_topic);
      stream.next(m.model_path);
      stream.next(m.model_id);
      stream.next(m.stop_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PresetStopLocationRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dg_msgs::PresetStopLocationRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dg_msgs::PresetStopLocationRequest_<ContainerAllocator>& v)
  {
    s << indent << "lidar_topic: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.lidar_topic);
    s << indent << "model_path: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.model_path);
    s << indent << "model_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.model_id);
    s << indent << "stop_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.stop_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DG_MSGS_MESSAGE_PRESETSTOPLOCATIONREQUEST_H
