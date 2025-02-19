// Generated by gencpp from file dg_msgs/CarBaseMoveTaskResult.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_CARBASEMOVETASKRESULT_H
#define DG_MSGS_MESSAGE_CARBASEMOVETASKRESULT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <dg_msgs/UniversalStateInfo.h>

namespace dg_msgs
{
template <class ContainerAllocator>
struct CarBaseMoveTaskResult_
{
  typedef CarBaseMoveTaskResult_<ContainerAllocator> Type;

  CarBaseMoveTaskResult_()
    : time_cost(0.0)
    , state_info()  {
    }
  CarBaseMoveTaskResult_(const ContainerAllocator& _alloc)
    : time_cost(0.0)
    , state_info(_alloc)  {
  (void)_alloc;
    }



   typedef float _time_cost_type;
  _time_cost_type time_cost;

   typedef  ::dg_msgs::UniversalStateInfo_<ContainerAllocator>  _state_info_type;
  _state_info_type state_info;





  typedef boost::shared_ptr< ::dg_msgs::CarBaseMoveTaskResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dg_msgs::CarBaseMoveTaskResult_<ContainerAllocator> const> ConstPtr;

}; // struct CarBaseMoveTaskResult_

typedef ::dg_msgs::CarBaseMoveTaskResult_<std::allocator<void> > CarBaseMoveTaskResult;

typedef boost::shared_ptr< ::dg_msgs::CarBaseMoveTaskResult > CarBaseMoveTaskResultPtr;
typedef boost::shared_ptr< ::dg_msgs::CarBaseMoveTaskResult const> CarBaseMoveTaskResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dg_msgs::CarBaseMoveTaskResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dg_msgs::CarBaseMoveTaskResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dg_msgs::CarBaseMoveTaskResult_<ContainerAllocator1> & lhs, const ::dg_msgs::CarBaseMoveTaskResult_<ContainerAllocator2> & rhs)
{
  return lhs.time_cost == rhs.time_cost &&
    lhs.state_info == rhs.state_info;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dg_msgs::CarBaseMoveTaskResult_<ContainerAllocator1> & lhs, const ::dg_msgs::CarBaseMoveTaskResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dg_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::CarBaseMoveTaskResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::CarBaseMoveTaskResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::CarBaseMoveTaskResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::CarBaseMoveTaskResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::CarBaseMoveTaskResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::CarBaseMoveTaskResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dg_msgs::CarBaseMoveTaskResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fb056551c70c0a36ef2b4a2179be1f62";
  }

  static const char* value(const ::dg_msgs::CarBaseMoveTaskResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfb056551c70c0a36ULL;
  static const uint64_t static_value2 = 0xef2b4a2179be1f62ULL;
};

template<class ContainerAllocator>
struct DataType< ::dg_msgs::CarBaseMoveTaskResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dg_msgs/CarBaseMoveTaskResult";
  }

  static const char* value(const ::dg_msgs::CarBaseMoveTaskResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dg_msgs::CarBaseMoveTaskResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"float32 time_cost                           # 到达耗时  result\n"
"UniversalStateInfo  state_info\n"
"\n"
"================================================================================\n"
"MSG: dg_msgs/UniversalStateInfo\n"
"int32 state_index   # 状态索引值：统一0是正常，其他数字自定义\n"
"string node_name    # 当前节点名\n"
"string state_msgs   # 附加信息，相当于additional_msgs\n"
;
  }

  static const char* value(const ::dg_msgs::CarBaseMoveTaskResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dg_msgs::CarBaseMoveTaskResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.time_cost);
      stream.next(m.state_info);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CarBaseMoveTaskResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dg_msgs::CarBaseMoveTaskResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dg_msgs::CarBaseMoveTaskResult_<ContainerAllocator>& v)
  {
    s << indent << "time_cost: ";
    Printer<float>::stream(s, indent + "  ", v.time_cost);
    s << indent << "state_info: ";
    s << std::endl;
    Printer< ::dg_msgs::UniversalStateInfo_<ContainerAllocator> >::stream(s, indent + "  ", v.state_info);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DG_MSGS_MESSAGE_CARBASEMOVETASKRESULT_H
