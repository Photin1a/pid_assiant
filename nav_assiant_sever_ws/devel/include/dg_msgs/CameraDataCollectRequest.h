// Generated by gencpp from file dg_msgs/CameraDataCollectRequest.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_CAMERADATACOLLECTREQUEST_H
#define DG_MSGS_MESSAGE_CAMERADATACOLLECTREQUEST_H


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
struct CameraDataCollectRequest_
{
  typedef CameraDataCollectRequest_<ContainerAllocator> Type;

  CameraDataCollectRequest_()
    : point_cloud_path()  {
    }
  CameraDataCollectRequest_(const ContainerAllocator& _alloc)
    : point_cloud_path(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _point_cloud_path_type;
  _point_cloud_path_type point_cloud_path;





  typedef boost::shared_ptr< ::dg_msgs::CameraDataCollectRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dg_msgs::CameraDataCollectRequest_<ContainerAllocator> const> ConstPtr;

}; // struct CameraDataCollectRequest_

typedef ::dg_msgs::CameraDataCollectRequest_<std::allocator<void> > CameraDataCollectRequest;

typedef boost::shared_ptr< ::dg_msgs::CameraDataCollectRequest > CameraDataCollectRequestPtr;
typedef boost::shared_ptr< ::dg_msgs::CameraDataCollectRequest const> CameraDataCollectRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dg_msgs::CameraDataCollectRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dg_msgs::CameraDataCollectRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dg_msgs::CameraDataCollectRequest_<ContainerAllocator1> & lhs, const ::dg_msgs::CameraDataCollectRequest_<ContainerAllocator2> & rhs)
{
  return lhs.point_cloud_path == rhs.point_cloud_path;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dg_msgs::CameraDataCollectRequest_<ContainerAllocator1> & lhs, const ::dg_msgs::CameraDataCollectRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dg_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::CameraDataCollectRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::CameraDataCollectRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::CameraDataCollectRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::CameraDataCollectRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::CameraDataCollectRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::CameraDataCollectRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dg_msgs::CameraDataCollectRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "64334ff0caad3c60c3dbf62c3620ae4c";
  }

  static const char* value(const ::dg_msgs::CameraDataCollectRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x64334ff0caad3c60ULL;
  static const uint64_t static_value2 = 0xc3dbf62c3620ae4cULL;
};

template<class ContainerAllocator>
struct DataType< ::dg_msgs::CameraDataCollectRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dg_msgs/CameraDataCollectRequest";
  }

  static const char* value(const ::dg_msgs::CameraDataCollectRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dg_msgs::CameraDataCollectRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string point_cloud_path\n"
;
  }

  static const char* value(const ::dg_msgs::CameraDataCollectRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dg_msgs::CameraDataCollectRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.point_cloud_path);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CameraDataCollectRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dg_msgs::CameraDataCollectRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dg_msgs::CameraDataCollectRequest_<ContainerAllocator>& v)
  {
    s << indent << "point_cloud_path: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.point_cloud_path);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DG_MSGS_MESSAGE_CAMERADATACOLLECTREQUEST_H
