// Generated by gencpp from file dg_msgs/TakeAPointCloudRequest.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_TAKEAPOINTCLOUDREQUEST_H
#define DG_MSGS_MESSAGE_TAKEAPOINTCLOUDREQUEST_H


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
struct TakeAPointCloudRequest_
{
  typedef TakeAPointCloudRequest_<ContainerAllocator> Type;

  TakeAPointCloudRequest_()
    {
    }
  TakeAPointCloudRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::dg_msgs::TakeAPointCloudRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dg_msgs::TakeAPointCloudRequest_<ContainerAllocator> const> ConstPtr;

}; // struct TakeAPointCloudRequest_

typedef ::dg_msgs::TakeAPointCloudRequest_<std::allocator<void> > TakeAPointCloudRequest;

typedef boost::shared_ptr< ::dg_msgs::TakeAPointCloudRequest > TakeAPointCloudRequestPtr;
typedef boost::shared_ptr< ::dg_msgs::TakeAPointCloudRequest const> TakeAPointCloudRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dg_msgs::TakeAPointCloudRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dg_msgs::TakeAPointCloudRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace dg_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::TakeAPointCloudRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::TakeAPointCloudRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::TakeAPointCloudRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::TakeAPointCloudRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::TakeAPointCloudRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::TakeAPointCloudRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dg_msgs::TakeAPointCloudRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::dg_msgs::TakeAPointCloudRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::dg_msgs::TakeAPointCloudRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dg_msgs/TakeAPointCloudRequest";
  }

  static const char* value(const ::dg_msgs::TakeAPointCloudRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dg_msgs::TakeAPointCloudRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::dg_msgs::TakeAPointCloudRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dg_msgs::TakeAPointCloudRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TakeAPointCloudRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dg_msgs::TakeAPointCloudRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::dg_msgs::TakeAPointCloudRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // DG_MSGS_MESSAGE_TAKEAPOINTCLOUDREQUEST_H
