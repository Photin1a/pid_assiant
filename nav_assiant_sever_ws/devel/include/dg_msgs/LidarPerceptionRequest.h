// Generated by gencpp from file dg_msgs/LidarPerceptionRequest.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_LIDARPERCEPTIONREQUEST_H
#define DG_MSGS_MESSAGE_LIDARPERCEPTIONREQUEST_H


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
struct LidarPerceptionRequest_
{
  typedef LidarPerceptionRequest_<ContainerAllocator> Type;

  LidarPerceptionRequest_()
    : topic_lidar()
    , reset(false)  {
    }
  LidarPerceptionRequest_(const ContainerAllocator& _alloc)
    : topic_lidar(_alloc)
    , reset(false)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _topic_lidar_type;
  _topic_lidar_type topic_lidar;

   typedef uint8_t _reset_type;
  _reset_type reset;





  typedef boost::shared_ptr< ::dg_msgs::LidarPerceptionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dg_msgs::LidarPerceptionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct LidarPerceptionRequest_

typedef ::dg_msgs::LidarPerceptionRequest_<std::allocator<void> > LidarPerceptionRequest;

typedef boost::shared_ptr< ::dg_msgs::LidarPerceptionRequest > LidarPerceptionRequestPtr;
typedef boost::shared_ptr< ::dg_msgs::LidarPerceptionRequest const> LidarPerceptionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dg_msgs::LidarPerceptionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dg_msgs::LidarPerceptionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dg_msgs::LidarPerceptionRequest_<ContainerAllocator1> & lhs, const ::dg_msgs::LidarPerceptionRequest_<ContainerAllocator2> & rhs)
{
  return lhs.topic_lidar == rhs.topic_lidar &&
    lhs.reset == rhs.reset;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dg_msgs::LidarPerceptionRequest_<ContainerAllocator1> & lhs, const ::dg_msgs::LidarPerceptionRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dg_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::LidarPerceptionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::LidarPerceptionRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::LidarPerceptionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::LidarPerceptionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::LidarPerceptionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::LidarPerceptionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dg_msgs::LidarPerceptionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "017d021ca765404da441f7e5a0744bb0";
  }

  static const char* value(const ::dg_msgs::LidarPerceptionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x017d021ca765404dULL;
  static const uint64_t static_value2 = 0xa441f7e5a0744bb0ULL;
};

template<class ContainerAllocator>
struct DataType< ::dg_msgs::LidarPerceptionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dg_msgs/LidarPerceptionRequest";
  }

  static const char* value(const ::dg_msgs::LidarPerceptionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dg_msgs::LidarPerceptionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string topic_lidar\n"
"bool reset\n"
;
  }

  static const char* value(const ::dg_msgs::LidarPerceptionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dg_msgs::LidarPerceptionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.topic_lidar);
      stream.next(m.reset);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LidarPerceptionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dg_msgs::LidarPerceptionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dg_msgs::LidarPerceptionRequest_<ContainerAllocator>& v)
  {
    s << indent << "topic_lidar: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.topic_lidar);
    s << indent << "reset: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.reset);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DG_MSGS_MESSAGE_LIDARPERCEPTIONREQUEST_H
