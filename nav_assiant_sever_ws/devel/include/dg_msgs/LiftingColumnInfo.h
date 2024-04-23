// Generated by gencpp from file dg_msgs/LiftingColumnInfo.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_LIFTINGCOLUMNINFO_H
#define DG_MSGS_MESSAGE_LIFTINGCOLUMNINFO_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <dg_msgs/EquipmentCommon.h>

namespace dg_msgs
{
template <class ContainerAllocator>
struct LiftingColumnInfo_
{
  typedef LiftingColumnInfo_<ContainerAllocator> Type;

  LiftingColumnInfo_()
    : equipment()
    , number()  {
    }
  LiftingColumnInfo_(const ContainerAllocator& _alloc)
    : equipment(_alloc)
    , number(_alloc)  {
  (void)_alloc;
    }



   typedef  ::dg_msgs::EquipmentCommon_<ContainerAllocator>  _equipment_type;
  _equipment_type equipment;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _number_type;
  _number_type number;





  typedef boost::shared_ptr< ::dg_msgs::LiftingColumnInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dg_msgs::LiftingColumnInfo_<ContainerAllocator> const> ConstPtr;

}; // struct LiftingColumnInfo_

typedef ::dg_msgs::LiftingColumnInfo_<std::allocator<void> > LiftingColumnInfo;

typedef boost::shared_ptr< ::dg_msgs::LiftingColumnInfo > LiftingColumnInfoPtr;
typedef boost::shared_ptr< ::dg_msgs::LiftingColumnInfo const> LiftingColumnInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dg_msgs::LiftingColumnInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dg_msgs::LiftingColumnInfo_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dg_msgs::LiftingColumnInfo_<ContainerAllocator1> & lhs, const ::dg_msgs::LiftingColumnInfo_<ContainerAllocator2> & rhs)
{
  return lhs.equipment == rhs.equipment &&
    lhs.number == rhs.number;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dg_msgs::LiftingColumnInfo_<ContainerAllocator1> & lhs, const ::dg_msgs::LiftingColumnInfo_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dg_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::LiftingColumnInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::LiftingColumnInfo_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::LiftingColumnInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::LiftingColumnInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::LiftingColumnInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::LiftingColumnInfo_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dg_msgs::LiftingColumnInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a92e2b46f01bfa741cf5246e7733e6ae";
  }

  static const char* value(const ::dg_msgs::LiftingColumnInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa92e2b46f01bfa74ULL;
  static const uint64_t static_value2 = 0x1cf5246e7733e6aeULL;
};

template<class ContainerAllocator>
struct DataType< ::dg_msgs::LiftingColumnInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dg_msgs/LiftingColumnInfo";
  }

  static const char* value(const ::dg_msgs::LiftingColumnInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dg_msgs::LiftingColumnInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "EquipmentCommon equipment\n"
"string number           # 设备组编号\n"
"\n"
"================================================================================\n"
"MSG: dg_msgs/EquipmentCommon\n"
"int32 equipment_id\n"
"string equipment_name\n"
"bool connected\n"
"uint64 connected_time\n"
"string model\n"
"string manufacturer\n"
;
  }

  static const char* value(const ::dg_msgs::LiftingColumnInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dg_msgs::LiftingColumnInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.equipment);
      stream.next(m.number);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LiftingColumnInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dg_msgs::LiftingColumnInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dg_msgs::LiftingColumnInfo_<ContainerAllocator>& v)
  {
    s << indent << "equipment: ";
    s << std::endl;
    Printer< ::dg_msgs::EquipmentCommon_<ContainerAllocator> >::stream(s, indent + "  ", v.equipment);
    s << indent << "number: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.number);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DG_MSGS_MESSAGE_LIFTINGCOLUMNINFO_H
