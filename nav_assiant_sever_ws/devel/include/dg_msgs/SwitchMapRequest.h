// Generated by gencpp from file dg_msgs/SwitchMapRequest.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_SWITCHMAPREQUEST_H
#define DG_MSGS_MESSAGE_SWITCHMAPREQUEST_H


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
struct SwitchMapRequest_
{
  typedef SwitchMapRequest_<ContainerAllocator> Type;

  SwitchMapRequest_()
    : map_name()  {
    }
  SwitchMapRequest_(const ContainerAllocator& _alloc)
    : map_name(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _map_name_type;
  _map_name_type map_name;





  typedef boost::shared_ptr< ::dg_msgs::SwitchMapRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dg_msgs::SwitchMapRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SwitchMapRequest_

typedef ::dg_msgs::SwitchMapRequest_<std::allocator<void> > SwitchMapRequest;

typedef boost::shared_ptr< ::dg_msgs::SwitchMapRequest > SwitchMapRequestPtr;
typedef boost::shared_ptr< ::dg_msgs::SwitchMapRequest const> SwitchMapRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dg_msgs::SwitchMapRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dg_msgs::SwitchMapRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dg_msgs::SwitchMapRequest_<ContainerAllocator1> & lhs, const ::dg_msgs::SwitchMapRequest_<ContainerAllocator2> & rhs)
{
  return lhs.map_name == rhs.map_name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dg_msgs::SwitchMapRequest_<ContainerAllocator1> & lhs, const ::dg_msgs::SwitchMapRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dg_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::SwitchMapRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::SwitchMapRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::SwitchMapRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::SwitchMapRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::SwitchMapRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::SwitchMapRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dg_msgs::SwitchMapRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "25e928a2d4ff388c294895b7af935978";
  }

  static const char* value(const ::dg_msgs::SwitchMapRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x25e928a2d4ff388cULL;
  static const uint64_t static_value2 = 0x294895b7af935978ULL;
};

template<class ContainerAllocator>
struct DataType< ::dg_msgs::SwitchMapRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dg_msgs/SwitchMapRequest";
  }

  static const char* value(const ::dg_msgs::SwitchMapRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dg_msgs::SwitchMapRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# 切换地图 service name = /switch_map\n"
"string map_name             # 要切换的题图名称\n"
;
  }

  static const char* value(const ::dg_msgs::SwitchMapRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dg_msgs::SwitchMapRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.map_name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SwitchMapRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dg_msgs::SwitchMapRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dg_msgs::SwitchMapRequest_<ContainerAllocator>& v)
  {
    s << indent << "map_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.map_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DG_MSGS_MESSAGE_SWITCHMAPREQUEST_H
