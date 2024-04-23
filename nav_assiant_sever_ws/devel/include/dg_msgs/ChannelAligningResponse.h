// Generated by gencpp from file dg_msgs/ChannelAligningResponse.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_CHANNELALIGNINGRESPONSE_H
#define DG_MSGS_MESSAGE_CHANNELALIGNINGRESPONSE_H


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
struct ChannelAligningResponse_
{
  typedef ChannelAligningResponse_<ContainerAllocator> Type;

  ChannelAligningResponse_()
    : result(0)  {
    }
  ChannelAligningResponse_(const ContainerAllocator& _alloc)
    : result(0)  {
  (void)_alloc;
    }



   typedef int32_t _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::dg_msgs::ChannelAligningResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dg_msgs::ChannelAligningResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ChannelAligningResponse_

typedef ::dg_msgs::ChannelAligningResponse_<std::allocator<void> > ChannelAligningResponse;

typedef boost::shared_ptr< ::dg_msgs::ChannelAligningResponse > ChannelAligningResponsePtr;
typedef boost::shared_ptr< ::dg_msgs::ChannelAligningResponse const> ChannelAligningResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dg_msgs::ChannelAligningResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dg_msgs::ChannelAligningResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dg_msgs::ChannelAligningResponse_<ContainerAllocator1> & lhs, const ::dg_msgs::ChannelAligningResponse_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dg_msgs::ChannelAligningResponse_<ContainerAllocator1> & lhs, const ::dg_msgs::ChannelAligningResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dg_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::ChannelAligningResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::ChannelAligningResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::ChannelAligningResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::ChannelAligningResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::ChannelAligningResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::ChannelAligningResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dg_msgs::ChannelAligningResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "034a8e20d6a306665e3a5b340fab3f09";
  }

  static const char* value(const ::dg_msgs::ChannelAligningResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x034a8e20d6a30666ULL;
  static const uint64_t static_value2 = 0x5e3a5b340fab3f09ULL;
};

template<class ContainerAllocator>
struct DataType< ::dg_msgs::ChannelAligningResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dg_msgs/ChannelAligningResponse";
  }

  static const char* value(const ::dg_msgs::ChannelAligningResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dg_msgs::ChannelAligningResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 result        # 0: 成功  非0：失败\n"
"\n"
;
  }

  static const char* value(const ::dg_msgs::ChannelAligningResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dg_msgs::ChannelAligningResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ChannelAligningResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dg_msgs::ChannelAligningResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dg_msgs::ChannelAligningResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<int32_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DG_MSGS_MESSAGE_CHANNELALIGNINGRESPONSE_H
