// Generated by gencpp from file dg_msgs/AcquisitionTaskResult.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_ACQUISITIONTASKRESULT_H
#define DG_MSGS_MESSAGE_ACQUISITIONTASKRESULT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <dg_msgs/ImageResult.h>

namespace dg_msgs
{
template <class ContainerAllocator>
struct AcquisitionTaskResult_
{
  typedef AcquisitionTaskResult_<ContainerAllocator> Type;

  AcquisitionTaskResult_()
    : id()
    , results()
    , err_msg()  {
    }
  AcquisitionTaskResult_(const ContainerAllocator& _alloc)
    : id(_alloc)
    , results(_alloc)
    , err_msg(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _id_type;
  _id_type id;

   typedef std::vector< ::dg_msgs::ImageResult_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::dg_msgs::ImageResult_<ContainerAllocator> >> _results_type;
  _results_type results;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _err_msg_type;
  _err_msg_type err_msg;





  typedef boost::shared_ptr< ::dg_msgs::AcquisitionTaskResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dg_msgs::AcquisitionTaskResult_<ContainerAllocator> const> ConstPtr;

}; // struct AcquisitionTaskResult_

typedef ::dg_msgs::AcquisitionTaskResult_<std::allocator<void> > AcquisitionTaskResult;

typedef boost::shared_ptr< ::dg_msgs::AcquisitionTaskResult > AcquisitionTaskResultPtr;
typedef boost::shared_ptr< ::dg_msgs::AcquisitionTaskResult const> AcquisitionTaskResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dg_msgs::AcquisitionTaskResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dg_msgs::AcquisitionTaskResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dg_msgs::AcquisitionTaskResult_<ContainerAllocator1> & lhs, const ::dg_msgs::AcquisitionTaskResult_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.results == rhs.results &&
    lhs.err_msg == rhs.err_msg;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dg_msgs::AcquisitionTaskResult_<ContainerAllocator1> & lhs, const ::dg_msgs::AcquisitionTaskResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dg_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::AcquisitionTaskResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::AcquisitionTaskResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::AcquisitionTaskResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::AcquisitionTaskResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::AcquisitionTaskResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::AcquisitionTaskResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dg_msgs::AcquisitionTaskResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0f410bb1b8bcf6c3bbe6b9383417671f";
  }

  static const char* value(const ::dg_msgs::AcquisitionTaskResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0f410bb1b8bcf6c3ULL;
  static const uint64_t static_value2 = 0xbbe6b9383417671fULL;
};

template<class ContainerAllocator>
struct DataType< ::dg_msgs::AcquisitionTaskResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dg_msgs/AcquisitionTaskResult";
  }

  static const char* value(const ::dg_msgs::AcquisitionTaskResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dg_msgs::AcquisitionTaskResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#result definition\n"
"string id\n"
"ImageResult[] results\n"
"string err_msg\n"
"\n"
"================================================================================\n"
"MSG: dg_msgs/ImageResult\n"
"string id\n"
"int32 result        # 拍照结果 0: 成功  非0：失败\n"
"string gray         # 灰度图路径\n"
"string rgb          # 彩色图路径\n"
"string depth        # 深度图路径\n"
"string point_cloud  # 点云路径\n"
"float32[] intrinsic # 相机内参\n"
;
  }

  static const char* value(const ::dg_msgs::AcquisitionTaskResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dg_msgs::AcquisitionTaskResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.results);
      stream.next(m.err_msg);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AcquisitionTaskResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dg_msgs::AcquisitionTaskResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dg_msgs::AcquisitionTaskResult_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.id);
    s << indent << "results[]" << std::endl;
    for (size_t i = 0; i < v.results.size(); ++i)
    {
      s << indent << "  results[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::dg_msgs::ImageResult_<ContainerAllocator> >::stream(s, indent + "    ", v.results[i]);
    }
    s << indent << "err_msg: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.err_msg);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DG_MSGS_MESSAGE_ACQUISITIONTASKRESULT_H
