// Generated by gencpp from file dg_msgs/BollardOperationResult.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_BOLLARDOPERATIONRESULT_H
#define DG_MSGS_MESSAGE_BOLLARDOPERATIONRESULT_H


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
struct BollardOperationResult_
{
  typedef BollardOperationResult_<ContainerAllocator> Type;

  BollardOperationResult_()
    : arrived_height(0.0)  {
    }
  BollardOperationResult_(const ContainerAllocator& _alloc)
    : arrived_height(0.0)  {
  (void)_alloc;
    }



   typedef float _arrived_height_type;
  _arrived_height_type arrived_height;





  typedef boost::shared_ptr< ::dg_msgs::BollardOperationResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dg_msgs::BollardOperationResult_<ContainerAllocator> const> ConstPtr;

}; // struct BollardOperationResult_

typedef ::dg_msgs::BollardOperationResult_<std::allocator<void> > BollardOperationResult;

typedef boost::shared_ptr< ::dg_msgs::BollardOperationResult > BollardOperationResultPtr;
typedef boost::shared_ptr< ::dg_msgs::BollardOperationResult const> BollardOperationResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dg_msgs::BollardOperationResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dg_msgs::BollardOperationResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dg_msgs::BollardOperationResult_<ContainerAllocator1> & lhs, const ::dg_msgs::BollardOperationResult_<ContainerAllocator2> & rhs)
{
  return lhs.arrived_height == rhs.arrived_height;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dg_msgs::BollardOperationResult_<ContainerAllocator1> & lhs, const ::dg_msgs::BollardOperationResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dg_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::BollardOperationResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::BollardOperationResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::BollardOperationResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::BollardOperationResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::BollardOperationResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::BollardOperationResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dg_msgs::BollardOperationResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eb8c77b09f1e7357b01c349ed6076ac8";
  }

  static const char* value(const ::dg_msgs::BollardOperationResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeb8c77b09f1e7357ULL;
  static const uint64_t static_value2 = 0xb01c349ed6076ac8ULL;
};

template<class ContainerAllocator>
struct DataType< ::dg_msgs::BollardOperationResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dg_msgs/BollardOperationResult";
  }

  static const char* value(const ::dg_msgs::BollardOperationResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dg_msgs::BollardOperationResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"float32 arrived_height                      # 最终到达高度 \n"
;
  }

  static const char* value(const ::dg_msgs::BollardOperationResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dg_msgs::BollardOperationResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.arrived_height);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BollardOperationResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dg_msgs::BollardOperationResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dg_msgs::BollardOperationResult_<ContainerAllocator>& v)
  {
    s << indent << "arrived_height: ";
    Printer<float>::stream(s, indent + "  ", v.arrived_height);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DG_MSGS_MESSAGE_BOLLARDOPERATIONRESULT_H
