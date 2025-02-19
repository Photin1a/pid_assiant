// Generated by gencpp from file dg_msgs/TakeAPictureGoal.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_TAKEAPICTUREGOAL_H
#define DG_MSGS_MESSAGE_TAKEAPICTUREGOAL_H


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
struct TakeAPictureGoal_
{
  typedef TakeAPictureGoal_<ContainerAllocator> Type;

  TakeAPictureGoal_()
    : pointCloud()
    , rgb()
    , depth()
    , selection()  {
    }
  TakeAPictureGoal_(const ContainerAllocator& _alloc)
    : pointCloud(_alloc)
    , rgb(_alloc)
    , depth(_alloc)
    , selection(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _pointCloud_type;
  _pointCloud_type pointCloud;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _rgb_type;
  _rgb_type rgb;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _depth_type;
  _depth_type depth;

   typedef std::vector<uint8_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint8_t>> _selection_type;
  _selection_type selection;





  typedef boost::shared_ptr< ::dg_msgs::TakeAPictureGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dg_msgs::TakeAPictureGoal_<ContainerAllocator> const> ConstPtr;

}; // struct TakeAPictureGoal_

typedef ::dg_msgs::TakeAPictureGoal_<std::allocator<void> > TakeAPictureGoal;

typedef boost::shared_ptr< ::dg_msgs::TakeAPictureGoal > TakeAPictureGoalPtr;
typedef boost::shared_ptr< ::dg_msgs::TakeAPictureGoal const> TakeAPictureGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dg_msgs::TakeAPictureGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dg_msgs::TakeAPictureGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dg_msgs::TakeAPictureGoal_<ContainerAllocator1> & lhs, const ::dg_msgs::TakeAPictureGoal_<ContainerAllocator2> & rhs)
{
  return lhs.pointCloud == rhs.pointCloud &&
    lhs.rgb == rhs.rgb &&
    lhs.depth == rhs.depth &&
    lhs.selection == rhs.selection;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dg_msgs::TakeAPictureGoal_<ContainerAllocator1> & lhs, const ::dg_msgs::TakeAPictureGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dg_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::TakeAPictureGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::TakeAPictureGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::TakeAPictureGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::TakeAPictureGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::TakeAPictureGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::TakeAPictureGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dg_msgs::TakeAPictureGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "75a53d3d7dbe18c657bd2eb4588e1483";
  }

  static const char* value(const ::dg_msgs::TakeAPictureGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x75a53d3d7dbe18c6ULL;
  static const uint64_t static_value2 = 0x57bd2eb4588e1483ULL;
};

template<class ContainerAllocator>
struct DataType< ::dg_msgs::TakeAPictureGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dg_msgs/TakeAPictureGoal";
  }

  static const char* value(const ::dg_msgs::TakeAPictureGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dg_msgs::TakeAPictureGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#goal definition\n"
"string pointCloud\n"
"string rgb\n"
"string depth\n"
"bool[] selection #按照pointCloud, rgb, depth顺序输入是否需要对应的数据\n"
;
  }

  static const char* value(const ::dg_msgs::TakeAPictureGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dg_msgs::TakeAPictureGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pointCloud);
      stream.next(m.rgb);
      stream.next(m.depth);
      stream.next(m.selection);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TakeAPictureGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dg_msgs::TakeAPictureGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dg_msgs::TakeAPictureGoal_<ContainerAllocator>& v)
  {
    s << indent << "pointCloud: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.pointCloud);
    s << indent << "rgb: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.rgb);
    s << indent << "depth: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.depth);
    s << indent << "selection[]" << std::endl;
    for (size_t i = 0; i < v.selection.size(); ++i)
    {
      s << indent << "  selection[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.selection[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // DG_MSGS_MESSAGE_TAKEAPICTUREGOAL_H
