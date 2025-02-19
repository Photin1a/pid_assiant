// Generated by gencpp from file dg_msgs/SetNavModeRequest.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_SETNAVMODEREQUEST_H
#define DG_MSGS_MESSAGE_SETNAVMODEREQUEST_H


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
struct SetNavModeRequest_
{
  typedef SetNavModeRequest_<ContainerAllocator> Type;

  SetNavModeRequest_()
    : nav_mode(0)  {
    }
  SetNavModeRequest_(const ContainerAllocator& _alloc)
    : nav_mode(0)  {
  (void)_alloc;
    }



   typedef int32_t _nav_mode_type;
  _nav_mode_type nav_mode;





  typedef boost::shared_ptr< ::dg_msgs::SetNavModeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dg_msgs::SetNavModeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetNavModeRequest_

typedef ::dg_msgs::SetNavModeRequest_<std::allocator<void> > SetNavModeRequest;

typedef boost::shared_ptr< ::dg_msgs::SetNavModeRequest > SetNavModeRequestPtr;
typedef boost::shared_ptr< ::dg_msgs::SetNavModeRequest const> SetNavModeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dg_msgs::SetNavModeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dg_msgs::SetNavModeRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dg_msgs::SetNavModeRequest_<ContainerAllocator1> & lhs, const ::dg_msgs::SetNavModeRequest_<ContainerAllocator2> & rhs)
{
  return lhs.nav_mode == rhs.nav_mode;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dg_msgs::SetNavModeRequest_<ContainerAllocator1> & lhs, const ::dg_msgs::SetNavModeRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dg_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::SetNavModeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::SetNavModeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::SetNavModeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::SetNavModeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::SetNavModeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::SetNavModeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dg_msgs::SetNavModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6da4714a9065b59db72a6e63fec004bb";
  }

  static const char* value(const ::dg_msgs::SetNavModeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6da4714a9065b59dULL;
  static const uint64_t static_value2 = 0xb72a6e63fec004bbULL;
};

template<class ContainerAllocator>
struct DataType< ::dg_msgs::SetNavModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dg_msgs/SetNavModeRequest";
  }

  static const char* value(const ::dg_msgs::SetNavModeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dg_msgs::SetNavModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 nav_mode      # 导航模式 1：手动模式，通过线速度、角速度控制；2：站点导航\n"
;
  }

  static const char* value(const ::dg_msgs::SetNavModeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dg_msgs::SetNavModeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.nav_mode);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetNavModeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dg_msgs::SetNavModeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dg_msgs::SetNavModeRequest_<ContainerAllocator>& v)
  {
    s << indent << "nav_mode: ";
    Printer<int32_t>::stream(s, indent + "  ", v.nav_mode);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DG_MSGS_MESSAGE_SETNAVMODEREQUEST_H
