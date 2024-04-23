// Generated by gencpp from file dg_msgs/GetBollardStateResponse.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_GETBOLLARDSTATERESPONSE_H
#define DG_MSGS_MESSAGE_GETBOLLARDSTATERESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <dg_msgs/BollardState.h>

namespace dg_msgs
{
template <class ContainerAllocator>
struct GetBollardStateResponse_
{
  typedef GetBollardStateResponse_<ContainerAllocator> Type;

  GetBollardStateResponse_()
    : bollard_state()  {
    }
  GetBollardStateResponse_(const ContainerAllocator& _alloc)
    : bollard_state(_alloc)  {
  (void)_alloc;
    }



   typedef  ::dg_msgs::BollardState_<ContainerAllocator>  _bollard_state_type;
  _bollard_state_type bollard_state;





  typedef boost::shared_ptr< ::dg_msgs::GetBollardStateResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dg_msgs::GetBollardStateResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetBollardStateResponse_

typedef ::dg_msgs::GetBollardStateResponse_<std::allocator<void> > GetBollardStateResponse;

typedef boost::shared_ptr< ::dg_msgs::GetBollardStateResponse > GetBollardStateResponsePtr;
typedef boost::shared_ptr< ::dg_msgs::GetBollardStateResponse const> GetBollardStateResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dg_msgs::GetBollardStateResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dg_msgs::GetBollardStateResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dg_msgs::GetBollardStateResponse_<ContainerAllocator1> & lhs, const ::dg_msgs::GetBollardStateResponse_<ContainerAllocator2> & rhs)
{
  return lhs.bollard_state == rhs.bollard_state;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dg_msgs::GetBollardStateResponse_<ContainerAllocator1> & lhs, const ::dg_msgs::GetBollardStateResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dg_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::GetBollardStateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::GetBollardStateResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::GetBollardStateResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::GetBollardStateResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::GetBollardStateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::GetBollardStateResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dg_msgs::GetBollardStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "46329bf08315b68e8287f20b995b0a8b";
  }

  static const char* value(const ::dg_msgs::GetBollardStateResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x46329bf08315b68eULL;
  static const uint64_t static_value2 = 0x8287f20b995b0a8bULL;
};

template<class ContainerAllocator>
struct DataType< ::dg_msgs::GetBollardStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dg_msgs/GetBollardStateResponse";
  }

  static const char* value(const ::dg_msgs::GetBollardStateResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dg_msgs::GetBollardStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "BollardState bollard_state  # 升降柱状态\n"
"\n"
"================================================================================\n"
"MSG: dg_msgs/BollardState\n"
"# 升降柱状态信息\n"
"string number               # 设备组编号\n"
"string bollard_name         # 升降柱名\n"
"float32 absolute_height     # 升降柱绝对高度\n"
"float32 speed               # 升降柱速度\n"
"bool is_aviable             # 当前是否可用；急停被按下、当前处于自动、modbus指针没有成功建立\n"
"bool is_moving              # 当前是否正在运动\n"
;
  }

  static const char* value(const ::dg_msgs::GetBollardStateResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dg_msgs::GetBollardStateResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.bollard_state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetBollardStateResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dg_msgs::GetBollardStateResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dg_msgs::GetBollardStateResponse_<ContainerAllocator>& v)
  {
    s << indent << "bollard_state: ";
    s << std::endl;
    Printer< ::dg_msgs::BollardState_<ContainerAllocator> >::stream(s, indent + "  ", v.bollard_state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DG_MSGS_MESSAGE_GETBOLLARDSTATERESPONSE_H
