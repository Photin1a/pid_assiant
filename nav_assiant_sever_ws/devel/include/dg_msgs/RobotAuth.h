// Generated by gencpp from file dg_msgs/RobotAuth.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_ROBOTAUTH_H
#define DG_MSGS_MESSAGE_ROBOTAUTH_H


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
struct RobotAuth_
{
  typedef RobotAuth_<ContainerAllocator> Type;

  RobotAuth_()
    : robot_id()
    , token()  {
    }
  RobotAuth_(const ContainerAllocator& _alloc)
    : robot_id(_alloc)
    , token(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _robot_id_type;
  _robot_id_type robot_id;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _token_type;
  _token_type token;





  typedef boost::shared_ptr< ::dg_msgs::RobotAuth_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dg_msgs::RobotAuth_<ContainerAllocator> const> ConstPtr;

}; // struct RobotAuth_

typedef ::dg_msgs::RobotAuth_<std::allocator<void> > RobotAuth;

typedef boost::shared_ptr< ::dg_msgs::RobotAuth > RobotAuthPtr;
typedef boost::shared_ptr< ::dg_msgs::RobotAuth const> RobotAuthConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dg_msgs::RobotAuth_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dg_msgs::RobotAuth_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dg_msgs::RobotAuth_<ContainerAllocator1> & lhs, const ::dg_msgs::RobotAuth_<ContainerAllocator2> & rhs)
{
  return lhs.robot_id == rhs.robot_id &&
    lhs.token == rhs.token;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dg_msgs::RobotAuth_<ContainerAllocator1> & lhs, const ::dg_msgs::RobotAuth_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dg_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::RobotAuth_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::RobotAuth_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::RobotAuth_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::RobotAuth_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::RobotAuth_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::RobotAuth_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dg_msgs::RobotAuth_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b9d0ad1c6a095a78c7397487b7034aa9";
  }

  static const char* value(const ::dg_msgs::RobotAuth_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb9d0ad1c6a095a78ULL;
  static const uint64_t static_value2 = 0xc7397487b7034aa9ULL;
};

template<class ContainerAllocator>
struct DataType< ::dg_msgs::RobotAuth_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dg_msgs/RobotAuth";
  }

  static const char* value(const ::dg_msgs::RobotAuth_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dg_msgs::RobotAuth_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string robot_id\n"
"string token\n"
;
  }

  static const char* value(const ::dg_msgs::RobotAuth_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dg_msgs::RobotAuth_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.robot_id);
      stream.next(m.token);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RobotAuth_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dg_msgs::RobotAuth_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dg_msgs::RobotAuth_<ContainerAllocator>& v)
  {
    s << indent << "robot_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.robot_id);
    s << indent << "token: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.token);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DG_MSGS_MESSAGE_ROBOTAUTH_H
