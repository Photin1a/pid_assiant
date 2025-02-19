// Generated by gencpp from file dg_msgs/RobotArmStandbyResponse.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_ROBOTARMSTANDBYRESPONSE_H
#define DG_MSGS_MESSAGE_ROBOTARMSTANDBYRESPONSE_H


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
struct RobotArmStandbyResponse_
{
  typedef RobotArmStandbyResponse_<ContainerAllocator> Type;

  RobotArmStandbyResponse_()
    : result(0)
    , err_msg()  {
    }
  RobotArmStandbyResponse_(const ContainerAllocator& _alloc)
    : result(0)
    , err_msg(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _result_type;
  _result_type result;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _err_msg_type;
  _err_msg_type err_msg;





  typedef boost::shared_ptr< ::dg_msgs::RobotArmStandbyResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dg_msgs::RobotArmStandbyResponse_<ContainerAllocator> const> ConstPtr;

}; // struct RobotArmStandbyResponse_

typedef ::dg_msgs::RobotArmStandbyResponse_<std::allocator<void> > RobotArmStandbyResponse;

typedef boost::shared_ptr< ::dg_msgs::RobotArmStandbyResponse > RobotArmStandbyResponsePtr;
typedef boost::shared_ptr< ::dg_msgs::RobotArmStandbyResponse const> RobotArmStandbyResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dg_msgs::RobotArmStandbyResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dg_msgs::RobotArmStandbyResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dg_msgs::RobotArmStandbyResponse_<ContainerAllocator1> & lhs, const ::dg_msgs::RobotArmStandbyResponse_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result &&
    lhs.err_msg == rhs.err_msg;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dg_msgs::RobotArmStandbyResponse_<ContainerAllocator1> & lhs, const ::dg_msgs::RobotArmStandbyResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dg_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::RobotArmStandbyResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::RobotArmStandbyResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::RobotArmStandbyResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::RobotArmStandbyResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::RobotArmStandbyResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::RobotArmStandbyResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dg_msgs::RobotArmStandbyResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "09aeb1bafb3b420fac75afd69de1c815";
  }

  static const char* value(const ::dg_msgs::RobotArmStandbyResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x09aeb1bafb3b420fULL;
  static const uint64_t static_value2 = 0xac75afd69de1c815ULL;
};

template<class ContainerAllocator>
struct DataType< ::dg_msgs::RobotArmStandbyResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dg_msgs/RobotArmStandbyResponse";
  }

  static const char* value(const ::dg_msgs::RobotArmStandbyResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dg_msgs::RobotArmStandbyResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 result        # 0: 成功  非0：失败\n"
"string err_msg      # 错误信息\n"
"\n"
;
  }

  static const char* value(const ::dg_msgs::RobotArmStandbyResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dg_msgs::RobotArmStandbyResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
      stream.next(m.err_msg);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RobotArmStandbyResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dg_msgs::RobotArmStandbyResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dg_msgs::RobotArmStandbyResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<int32_t>::stream(s, indent + "  ", v.result);
    s << indent << "err_msg: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.err_msg);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DG_MSGS_MESSAGE_ROBOTARMSTANDBYRESPONSE_H
