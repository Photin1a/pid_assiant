// Generated by gencpp from file dg_msgs/NotificationInfo.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_NOTIFICATIONINFO_H
#define DG_MSGS_MESSAGE_NOTIFICATIONINFO_H


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
struct NotificationInfo_
{
  typedef NotificationInfo_<ContainerAllocator> Type;

  NotificationInfo_()
    : type(0)
    , level()
    , title()
    , message()
    , data()
    , datetime(0)  {
    }
  NotificationInfo_(const ContainerAllocator& _alloc)
    : type(0)
    , level(_alloc)
    , title(_alloc)
    , message(_alloc)
    , data(_alloc)
    , datetime(0)  {
  (void)_alloc;
    }



   typedef int32_t _type_type;
  _type_type type;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _level_type;
  _level_type level;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _title_type;
  _title_type title;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _message_type;
  _message_type message;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _data_type;
  _data_type data;

   typedef uint64_t _datetime_type;
  _datetime_type datetime;





  typedef boost::shared_ptr< ::dg_msgs::NotificationInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dg_msgs::NotificationInfo_<ContainerAllocator> const> ConstPtr;

}; // struct NotificationInfo_

typedef ::dg_msgs::NotificationInfo_<std::allocator<void> > NotificationInfo;

typedef boost::shared_ptr< ::dg_msgs::NotificationInfo > NotificationInfoPtr;
typedef boost::shared_ptr< ::dg_msgs::NotificationInfo const> NotificationInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dg_msgs::NotificationInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dg_msgs::NotificationInfo_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dg_msgs::NotificationInfo_<ContainerAllocator1> & lhs, const ::dg_msgs::NotificationInfo_<ContainerAllocator2> & rhs)
{
  return lhs.type == rhs.type &&
    lhs.level == rhs.level &&
    lhs.title == rhs.title &&
    lhs.message == rhs.message &&
    lhs.data == rhs.data &&
    lhs.datetime == rhs.datetime;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dg_msgs::NotificationInfo_<ContainerAllocator1> & lhs, const ::dg_msgs::NotificationInfo_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dg_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::NotificationInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::NotificationInfo_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::NotificationInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::NotificationInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::NotificationInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::NotificationInfo_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dg_msgs::NotificationInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e515c038beb10a6a0ef7c41f0cd3fe77";
  }

  static const char* value(const ::dg_msgs::NotificationInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe515c038beb10a6aULL;
  static const uint64_t static_value2 = 0x0ef7c41f0cd3fe77ULL;
};

template<class ContainerAllocator>
struct DataType< ::dg_msgs::NotificationInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dg_msgs/NotificationInfo";
  }

  static const char* value(const ::dg_msgs::NotificationInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dg_msgs::NotificationInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 type          # 类型编号，用于唯一区分每种通知\n"
"string level         # 等级，包含 verbose, normal, warning, critical\n"
"string title        # 标题\n"
"string message      # 通知文字描述\n"
"string data         # 通知数据，数据内容由通知类型决定，可能为json，base64等多种格式\n"
"uint64 datetime     # 时间\n"
;
  }

  static const char* value(const ::dg_msgs::NotificationInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dg_msgs::NotificationInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.type);
      stream.next(m.level);
      stream.next(m.title);
      stream.next(m.message);
      stream.next(m.data);
      stream.next(m.datetime);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NotificationInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dg_msgs::NotificationInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dg_msgs::NotificationInfo_<ContainerAllocator>& v)
  {
    s << indent << "type: ";
    Printer<int32_t>::stream(s, indent + "  ", v.type);
    s << indent << "level: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.level);
    s << indent << "title: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.title);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.message);
    s << indent << "data: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.data);
    s << indent << "datetime: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.datetime);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DG_MSGS_MESSAGE_NOTIFICATIONINFO_H
