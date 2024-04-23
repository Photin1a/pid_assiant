// Generated by gencpp from file dg_msgs/RobotArmAcqPauseRecoveryRequest.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_ROBOTARMACQPAUSERECOVERYREQUEST_H
#define DG_MSGS_MESSAGE_ROBOTARMACQPAUSERECOVERYREQUEST_H


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
struct RobotArmAcqPauseRecoveryRequest_
{
  typedef RobotArmAcqPauseRecoveryRequest_<ContainerAllocator> Type;

  RobotArmAcqPauseRecoveryRequest_()
    : number()
    , state_index(0)  {
    }
  RobotArmAcqPauseRecoveryRequest_(const ContainerAllocator& _alloc)
    : number(_alloc)
    , state_index(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _number_type;
  _number_type number;

   typedef int32_t _state_index_type;
  _state_index_type state_index;





  typedef boost::shared_ptr< ::dg_msgs::RobotArmAcqPauseRecoveryRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dg_msgs::RobotArmAcqPauseRecoveryRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RobotArmAcqPauseRecoveryRequest_

typedef ::dg_msgs::RobotArmAcqPauseRecoveryRequest_<std::allocator<void> > RobotArmAcqPauseRecoveryRequest;

typedef boost::shared_ptr< ::dg_msgs::RobotArmAcqPauseRecoveryRequest > RobotArmAcqPauseRecoveryRequestPtr;
typedef boost::shared_ptr< ::dg_msgs::RobotArmAcqPauseRecoveryRequest const> RobotArmAcqPauseRecoveryRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dg_msgs::RobotArmAcqPauseRecoveryRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dg_msgs::RobotArmAcqPauseRecoveryRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dg_msgs::RobotArmAcqPauseRecoveryRequest_<ContainerAllocator1> & lhs, const ::dg_msgs::RobotArmAcqPauseRecoveryRequest_<ContainerAllocator2> & rhs)
{
  return lhs.number == rhs.number &&
    lhs.state_index == rhs.state_index;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dg_msgs::RobotArmAcqPauseRecoveryRequest_<ContainerAllocator1> & lhs, const ::dg_msgs::RobotArmAcqPauseRecoveryRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dg_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::RobotArmAcqPauseRecoveryRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::RobotArmAcqPauseRecoveryRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::RobotArmAcqPauseRecoveryRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::RobotArmAcqPauseRecoveryRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::RobotArmAcqPauseRecoveryRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::RobotArmAcqPauseRecoveryRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dg_msgs::RobotArmAcqPauseRecoveryRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a16ec2e10be40e1fed7532494c087807";
  }

  static const char* value(const ::dg_msgs::RobotArmAcqPauseRecoveryRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa16ec2e10be40e1fULL;
  static const uint64_t static_value2 = 0xed7532494c087807ULL;
};

template<class ContainerAllocator>
struct DataType< ::dg_msgs::RobotArmAcqPauseRecoveryRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dg_msgs/RobotArmAcqPauseRecoveryRequest";
  }

  static const char* value(const ::dg_msgs::RobotArmAcqPauseRecoveryRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dg_msgs::RobotArmAcqPauseRecoveryRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string number        # 设备编码\n"
"int32 state_index    # pause(1), recovery(2), terminate(-1)\n"
;
  }

  static const char* value(const ::dg_msgs::RobotArmAcqPauseRecoveryRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dg_msgs::RobotArmAcqPauseRecoveryRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.number);
      stream.next(m.state_index);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RobotArmAcqPauseRecoveryRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dg_msgs::RobotArmAcqPauseRecoveryRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dg_msgs::RobotArmAcqPauseRecoveryRequest_<ContainerAllocator>& v)
  {
    s << indent << "number: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.number);
    s << indent << "state_index: ";
    Printer<int32_t>::stream(s, indent + "  ", v.state_index);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DG_MSGS_MESSAGE_ROBOTARMACQPAUSERECOVERYREQUEST_H
