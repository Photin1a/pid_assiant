// Generated by gencpp from file dg_msgs/XGGoToElevatorRequest.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_XGGOTOELEVATORREQUEST_H
#define DG_MSGS_MESSAGE_XGGOTOELEVATORREQUEST_H


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
struct XGGoToElevatorRequest_
{
  typedef XGGoToElevatorRequest_<ContainerAllocator> Type;

  XGGoToElevatorRequest_()
    : enter_method()  {
    }
  XGGoToElevatorRequest_(const ContainerAllocator& _alloc)
    : enter_method(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _enter_method_type;
  _enter_method_type enter_method;





  typedef boost::shared_ptr< ::dg_msgs::XGGoToElevatorRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dg_msgs::XGGoToElevatorRequest_<ContainerAllocator> const> ConstPtr;

}; // struct XGGoToElevatorRequest_

typedef ::dg_msgs::XGGoToElevatorRequest_<std::allocator<void> > XGGoToElevatorRequest;

typedef boost::shared_ptr< ::dg_msgs::XGGoToElevatorRequest > XGGoToElevatorRequestPtr;
typedef boost::shared_ptr< ::dg_msgs::XGGoToElevatorRequest const> XGGoToElevatorRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dg_msgs::XGGoToElevatorRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dg_msgs::XGGoToElevatorRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dg_msgs::XGGoToElevatorRequest_<ContainerAllocator1> & lhs, const ::dg_msgs::XGGoToElevatorRequest_<ContainerAllocator2> & rhs)
{
  return lhs.enter_method == rhs.enter_method;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dg_msgs::XGGoToElevatorRequest_<ContainerAllocator1> & lhs, const ::dg_msgs::XGGoToElevatorRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dg_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::XGGoToElevatorRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::XGGoToElevatorRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::XGGoToElevatorRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::XGGoToElevatorRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::XGGoToElevatorRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::XGGoToElevatorRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dg_msgs::XGGoToElevatorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b5c26d5725409043fdefbebe77f6f933";
  }

  static const char* value(const ::dg_msgs::XGGoToElevatorRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb5c26d5725409043ULL;
  static const uint64_t static_value2 = 0xfdefbebe77f6f933ULL;
};

template<class ContainerAllocator>
struct DataType< ::dg_msgs::XGGoToElevatorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dg_msgs/XGGoToElevatorRequest";
  }

  static const char* value(const ::dg_msgs::XGGoToElevatorRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dg_msgs::XGGoToElevatorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# 变量说明\n"
"# enter_method 进入电梯的方式，从左侧进入、从右侧进入\n"
"string enter_method\n"
;
  }

  static const char* value(const ::dg_msgs::XGGoToElevatorRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dg_msgs::XGGoToElevatorRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.enter_method);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct XGGoToElevatorRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dg_msgs::XGGoToElevatorRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dg_msgs::XGGoToElevatorRequest_<ContainerAllocator>& v)
  {
    s << indent << "enter_method: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.enter_method);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DG_MSGS_MESSAGE_XGGOTOELEVATORREQUEST_H
