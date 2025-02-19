// Generated by gencpp from file dg_msgs/GetSetAntiCollisionWheelRequest.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_GETSETANTICOLLISIONWHEELREQUEST_H
#define DG_MSGS_MESSAGE_GETSETANTICOLLISIONWHEELREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <dg_msgs/AntiCollisionWheelState.h>

namespace dg_msgs
{
template <class ContainerAllocator>
struct GetSetAntiCollisionWheelRequest_
{
  typedef GetSetAntiCollisionWheelRequest_<ContainerAllocator> Type;

  GetSetAntiCollisionWheelRequest_()
    : target_state()  {
    }
  GetSetAntiCollisionWheelRequest_(const ContainerAllocator& _alloc)
    : target_state(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::dg_msgs::AntiCollisionWheelState_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::dg_msgs::AntiCollisionWheelState_<ContainerAllocator> >> _target_state_type;
  _target_state_type target_state;





  typedef boost::shared_ptr< ::dg_msgs::GetSetAntiCollisionWheelRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dg_msgs::GetSetAntiCollisionWheelRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetSetAntiCollisionWheelRequest_

typedef ::dg_msgs::GetSetAntiCollisionWheelRequest_<std::allocator<void> > GetSetAntiCollisionWheelRequest;

typedef boost::shared_ptr< ::dg_msgs::GetSetAntiCollisionWheelRequest > GetSetAntiCollisionWheelRequestPtr;
typedef boost::shared_ptr< ::dg_msgs::GetSetAntiCollisionWheelRequest const> GetSetAntiCollisionWheelRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dg_msgs::GetSetAntiCollisionWheelRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dg_msgs::GetSetAntiCollisionWheelRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dg_msgs::GetSetAntiCollisionWheelRequest_<ContainerAllocator1> & lhs, const ::dg_msgs::GetSetAntiCollisionWheelRequest_<ContainerAllocator2> & rhs)
{
  return lhs.target_state == rhs.target_state;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dg_msgs::GetSetAntiCollisionWheelRequest_<ContainerAllocator1> & lhs, const ::dg_msgs::GetSetAntiCollisionWheelRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dg_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::GetSetAntiCollisionWheelRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::GetSetAntiCollisionWheelRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::GetSetAntiCollisionWheelRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::GetSetAntiCollisionWheelRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::GetSetAntiCollisionWheelRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::GetSetAntiCollisionWheelRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dg_msgs::GetSetAntiCollisionWheelRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "52179119cac1f3fc553cd5881acb98e5";
  }

  static const char* value(const ::dg_msgs::GetSetAntiCollisionWheelRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x52179119cac1f3fcULL;
  static const uint64_t static_value2 = 0x553cd5881acb98e5ULL;
};

template<class ContainerAllocator>
struct DataType< ::dg_msgs::GetSetAntiCollisionWheelRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dg_msgs/GetSetAntiCollisionWheelRequest";
  }

  static const char* value(const ::dg_msgs::GetSetAntiCollisionWheelRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dg_msgs::GetSetAntiCollisionWheelRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# 获取/设置防撞轮状态 - 允许同时设置/获取多个防撞轮状态\n"
"AntiCollisionWheelState[] target_state\n"
"\n"
"================================================================================\n"
"MSG: dg_msgs/AntiCollisionWheelState\n"
"# 防撞轮状态 - 设置和获取通用\n"
"string wheel_name           # 防撞轮名\n"
"bool is_get_state           # 当前请求是否是获得状态，如果为true为请求状态，false则为设置状态\n"
"float32 position            # 位置\n"
"float32 speed               # 速度\n"
"int32 state_word            # 状态字\n"
;
  }

  static const char* value(const ::dg_msgs::GetSetAntiCollisionWheelRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dg_msgs::GetSetAntiCollisionWheelRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.target_state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetSetAntiCollisionWheelRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dg_msgs::GetSetAntiCollisionWheelRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dg_msgs::GetSetAntiCollisionWheelRequest_<ContainerAllocator>& v)
  {
    s << indent << "target_state[]" << std::endl;
    for (size_t i = 0; i < v.target_state.size(); ++i)
    {
      s << indent << "  target_state[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::dg_msgs::AntiCollisionWheelState_<ContainerAllocator> >::stream(s, indent + "    ", v.target_state[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // DG_MSGS_MESSAGE_GETSETANTICOLLISIONWHEELREQUEST_H
