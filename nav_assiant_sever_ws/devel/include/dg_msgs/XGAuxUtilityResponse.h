// Generated by gencpp from file dg_msgs/XGAuxUtilityResponse.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_XGAUXUTILITYRESPONSE_H
#define DG_MSGS_MESSAGE_XGAUXUTILITYRESPONSE_H


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
struct XGAuxUtilityResponse_
{
  typedef XGAuxUtilityResponse_<ContainerAllocator> Type;

  XGAuxUtilityResponse_()
    : state_info()  {
    }
  XGAuxUtilityResponse_(const ContainerAllocator& _alloc)
    : state_info(_alloc)  {
  (void)_alloc;
    }



   typedef  ::dg_msgs::UniversalStateInfo_<ContainerAllocator>  _state_info_type;
  _state_info_type state_info;





  typedef boost::shared_ptr< ::dg_msgs::XGAuxUtilityResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dg_msgs::XGAuxUtilityResponse_<ContainerAllocator> const> ConstPtr;

}; // struct XGAuxUtilityResponse_

typedef ::dg_msgs::XGAuxUtilityResponse_<std::allocator<void> > XGAuxUtilityResponse;

typedef boost::shared_ptr< ::dg_msgs::XGAuxUtilityResponse > XGAuxUtilityResponsePtr;
typedef boost::shared_ptr< ::dg_msgs::XGAuxUtilityResponse const> XGAuxUtilityResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dg_msgs::XGAuxUtilityResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dg_msgs::XGAuxUtilityResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dg_msgs::XGAuxUtilityResponse_<ContainerAllocator1> & lhs, const ::dg_msgs::XGAuxUtilityResponse_<ContainerAllocator2> & rhs)
{
  return lhs.state_info == rhs.state_info;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dg_msgs::XGAuxUtilityResponse_<ContainerAllocator1> & lhs, const ::dg_msgs::XGAuxUtilityResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dg_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::XGAuxUtilityResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::XGAuxUtilityResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::XGAuxUtilityResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::XGAuxUtilityResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::XGAuxUtilityResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::XGAuxUtilityResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dg_msgs::XGAuxUtilityResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8b810613bd7e6867ccbfac2fb14e2de4";
  }

  static const char* value(const ::dg_msgs::XGAuxUtilityResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8b810613bd7e6867ULL;
  static const uint64_t static_value2 = 0xccbfac2fb14e2de4ULL;
};

template<class ContainerAllocator>
struct DataType< ::dg_msgs::XGAuxUtilityResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dg_msgs/XGAuxUtilityResponse";
  }

  static const char* value(const ::dg_msgs::XGAuxUtilityResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dg_msgs::XGAuxUtilityResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "UniversalStateInfo  state_info\n"
"\n"
"================================================================================\n"
"MSG: dg_msgs/UniversalStateInfo\n"
"int32 state_index   # 状态索引值：统一0是正常，其他数字自定义\n"
"string node_name    # 当前节点名\n"
"string state_msgs   # 附加信息，相当于additional_msgs\n"
;
  }

  static const char* value(const ::dg_msgs::XGAuxUtilityResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dg_msgs::XGAuxUtilityResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state_info);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct XGAuxUtilityResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dg_msgs::XGAuxUtilityResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dg_msgs::XGAuxUtilityResponse_<ContainerAllocator>& v)
  {
    s << indent << "state_info: ";
    s << std::endl;
    Printer< ::dg_msgs::UniversalStateInfo_<ContainerAllocator> >::stream(s, indent + "  ", v.state_info);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DG_MSGS_MESSAGE_XGAUXUTILITYRESPONSE_H
