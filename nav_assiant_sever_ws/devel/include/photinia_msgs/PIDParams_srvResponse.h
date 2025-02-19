// Generated by gencpp from file photinia_msgs/PIDParams_srvResponse.msg
// DO NOT EDIT!


#ifndef PHOTINIA_MSGS_MESSAGE_PIDPARAMS_SRVRESPONSE_H
#define PHOTINIA_MSGS_MESSAGE_PIDPARAMS_SRVRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace photinia_msgs
{
template <class ContainerAllocator>
struct PIDParams_srvResponse_
{
  typedef PIDParams_srvResponse_<ContainerAllocator> Type;

  PIDParams_srvResponse_()
    : is_success(false)
    , detail()  {
    }
  PIDParams_srvResponse_(const ContainerAllocator& _alloc)
    : is_success(false)
    , detail(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _is_success_type;
  _is_success_type is_success;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _detail_type;
  _detail_type detail;





  typedef boost::shared_ptr< ::photinia_msgs::PIDParams_srvResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::photinia_msgs::PIDParams_srvResponse_<ContainerAllocator> const> ConstPtr;

}; // struct PIDParams_srvResponse_

typedef ::photinia_msgs::PIDParams_srvResponse_<std::allocator<void> > PIDParams_srvResponse;

typedef boost::shared_ptr< ::photinia_msgs::PIDParams_srvResponse > PIDParams_srvResponsePtr;
typedef boost::shared_ptr< ::photinia_msgs::PIDParams_srvResponse const> PIDParams_srvResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::photinia_msgs::PIDParams_srvResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::photinia_msgs::PIDParams_srvResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::photinia_msgs::PIDParams_srvResponse_<ContainerAllocator1> & lhs, const ::photinia_msgs::PIDParams_srvResponse_<ContainerAllocator2> & rhs)
{
  return lhs.is_success == rhs.is_success &&
    lhs.detail == rhs.detail;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::photinia_msgs::PIDParams_srvResponse_<ContainerAllocator1> & lhs, const ::photinia_msgs::PIDParams_srvResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace photinia_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::photinia_msgs::PIDParams_srvResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::photinia_msgs::PIDParams_srvResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::photinia_msgs::PIDParams_srvResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::photinia_msgs::PIDParams_srvResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::photinia_msgs::PIDParams_srvResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::photinia_msgs::PIDParams_srvResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::photinia_msgs::PIDParams_srvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "de9a69034e69d5cacf9d93506559dd27";
  }

  static const char* value(const ::photinia_msgs::PIDParams_srvResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xde9a69034e69d5caULL;
  static const uint64_t static_value2 = 0xcf9d93506559dd27ULL;
};

template<class ContainerAllocator>
struct DataType< ::photinia_msgs::PIDParams_srvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "photinia_msgs/PIDParams_srvResponse";
  }

  static const char* value(const ::photinia_msgs::PIDParams_srvResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::photinia_msgs::PIDParams_srvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool is_success  #pid设置成功：true    失败：false\n"
"string detail\n"
"\n"
"\n"
;
  }

  static const char* value(const ::photinia_msgs::PIDParams_srvResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::photinia_msgs::PIDParams_srvResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.is_success);
      stream.next(m.detail);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PIDParams_srvResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::photinia_msgs::PIDParams_srvResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::photinia_msgs::PIDParams_srvResponse_<ContainerAllocator>& v)
  {
    s << indent << "is_success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_success);
    s << indent << "detail: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.detail);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PHOTINIA_MSGS_MESSAGE_PIDPARAMS_SRVRESPONSE_H
