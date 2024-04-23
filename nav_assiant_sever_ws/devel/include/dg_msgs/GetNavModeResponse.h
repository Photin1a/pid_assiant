// Generated by gencpp from file dg_msgs/GetNavModeResponse.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_GETNAVMODERESPONSE_H
#define DG_MSGS_MESSAGE_GETNAVMODERESPONSE_H


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
struct GetNavModeResponse_
{
  typedef GetNavModeResponse_<ContainerAllocator> Type;

  GetNavModeResponse_()
    : nav_mode(0)  {
    }
  GetNavModeResponse_(const ContainerAllocator& _alloc)
    : nav_mode(0)  {
  (void)_alloc;
    }



   typedef int32_t _nav_mode_type;
  _nav_mode_type nav_mode;





  typedef boost::shared_ptr< ::dg_msgs::GetNavModeResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dg_msgs::GetNavModeResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetNavModeResponse_

typedef ::dg_msgs::GetNavModeResponse_<std::allocator<void> > GetNavModeResponse;

typedef boost::shared_ptr< ::dg_msgs::GetNavModeResponse > GetNavModeResponsePtr;
typedef boost::shared_ptr< ::dg_msgs::GetNavModeResponse const> GetNavModeResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dg_msgs::GetNavModeResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dg_msgs::GetNavModeResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dg_msgs::GetNavModeResponse_<ContainerAllocator1> & lhs, const ::dg_msgs::GetNavModeResponse_<ContainerAllocator2> & rhs)
{
  return lhs.nav_mode == rhs.nav_mode;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dg_msgs::GetNavModeResponse_<ContainerAllocator1> & lhs, const ::dg_msgs::GetNavModeResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dg_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::GetNavModeResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::GetNavModeResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::GetNavModeResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::GetNavModeResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::GetNavModeResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::GetNavModeResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dg_msgs::GetNavModeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6da4714a9065b59db72a6e63fec004bb";
  }

  static const char* value(const ::dg_msgs::GetNavModeResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6da4714a9065b59dULL;
  static const uint64_t static_value2 = 0xb72a6e63fec004bbULL;
};

template<class ContainerAllocator>
struct DataType< ::dg_msgs::GetNavModeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dg_msgs/GetNavModeResponse";
  }

  static const char* value(const ::dg_msgs::GetNavModeResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dg_msgs::GetNavModeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 nav_mode\n"
"\n"
;
  }

  static const char* value(const ::dg_msgs::GetNavModeResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dg_msgs::GetNavModeResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.nav_mode);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetNavModeResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dg_msgs::GetNavModeResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dg_msgs::GetNavModeResponse_<ContainerAllocator>& v)
  {
    s << indent << "nav_mode: ";
    Printer<int32_t>::stream(s, indent + "  ", v.nav_mode);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DG_MSGS_MESSAGE_GETNAVMODERESPONSE_H
