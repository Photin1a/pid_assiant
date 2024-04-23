// Generated by gencpp from file dg_msgs/getMultiJointDataResponse.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_GETMULTIJOINTDATARESPONSE_H
#define DG_MSGS_MESSAGE_GETMULTIJOINTDATARESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Float64MultiArray.h>

namespace dg_msgs
{
template <class ContainerAllocator>
struct getMultiJointDataResponse_
{
  typedef getMultiJointDataResponse_<ContainerAllocator> Type;

  getMultiJointDataResponse_()
    : multi_joint_data()  {
    }
  getMultiJointDataResponse_(const ContainerAllocator& _alloc)
    : multi_joint_data(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::std_msgs::Float64MultiArray_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::std_msgs::Float64MultiArray_<ContainerAllocator> >> _multi_joint_data_type;
  _multi_joint_data_type multi_joint_data;





  typedef boost::shared_ptr< ::dg_msgs::getMultiJointDataResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dg_msgs::getMultiJointDataResponse_<ContainerAllocator> const> ConstPtr;

}; // struct getMultiJointDataResponse_

typedef ::dg_msgs::getMultiJointDataResponse_<std::allocator<void> > getMultiJointDataResponse;

typedef boost::shared_ptr< ::dg_msgs::getMultiJointDataResponse > getMultiJointDataResponsePtr;
typedef boost::shared_ptr< ::dg_msgs::getMultiJointDataResponse const> getMultiJointDataResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dg_msgs::getMultiJointDataResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dg_msgs::getMultiJointDataResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dg_msgs::getMultiJointDataResponse_<ContainerAllocator1> & lhs, const ::dg_msgs::getMultiJointDataResponse_<ContainerAllocator2> & rhs)
{
  return lhs.multi_joint_data == rhs.multi_joint_data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dg_msgs::getMultiJointDataResponse_<ContainerAllocator1> & lhs, const ::dg_msgs::getMultiJointDataResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dg_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::getMultiJointDataResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::getMultiJointDataResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::getMultiJointDataResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::getMultiJointDataResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::getMultiJointDataResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::getMultiJointDataResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dg_msgs::getMultiJointDataResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8f36bb3dc5e97ebfc79b2c4dbc512776";
  }

  static const char* value(const ::dg_msgs::getMultiJointDataResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8f36bb3dc5e97ebfULL;
  static const uint64_t static_value2 = 0xc79b2c4dbc512776ULL;
};

template<class ContainerAllocator>
struct DataType< ::dg_msgs::getMultiJointDataResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dg_msgs/getMultiJointDataResponse";
  }

  static const char* value(const ::dg_msgs::getMultiJointDataResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dg_msgs::getMultiJointDataResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Float64MultiArray[] multi_joint_data\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Float64MultiArray\n"
"# Please look at the MultiArrayLayout message definition for\n"
"# documentation on all multiarrays.\n"
"\n"
"MultiArrayLayout  layout        # specification of data layout\n"
"float64[]         data          # array of data\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/MultiArrayLayout\n"
"# The multiarray declares a generic multi-dimensional array of a\n"
"# particular data type.  Dimensions are ordered from outer most\n"
"# to inner most.\n"
"\n"
"MultiArrayDimension[] dim # Array of dimension properties\n"
"uint32 data_offset        # padding elements at front of data\n"
"\n"
"# Accessors should ALWAYS be written in terms of dimension stride\n"
"# and specified outer-most dimension first.\n"
"# \n"
"# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]\n"
"#\n"
"# A standard, 3-channel 640x480 image with interleaved color channels\n"
"# would be specified as:\n"
"#\n"
"# dim[0].label  = \"height\"\n"
"# dim[0].size   = 480\n"
"# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)\n"
"# dim[1].label  = \"width\"\n"
"# dim[1].size   = 640\n"
"# dim[1].stride = 3*640 = 1920\n"
"# dim[2].label  = \"channel\"\n"
"# dim[2].size   = 3\n"
"# dim[2].stride = 3\n"
"#\n"
"# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/MultiArrayDimension\n"
"string label   # label of given dimension\n"
"uint32 size    # size of given dimension (in type units)\n"
"uint32 stride  # stride of given dimension\n"
;
  }

  static const char* value(const ::dg_msgs::getMultiJointDataResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dg_msgs::getMultiJointDataResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.multi_joint_data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct getMultiJointDataResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dg_msgs::getMultiJointDataResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dg_msgs::getMultiJointDataResponse_<ContainerAllocator>& v)
  {
    s << indent << "multi_joint_data[]" << std::endl;
    for (size_t i = 0; i < v.multi_joint_data.size(); ++i)
    {
      s << indent << "  multi_joint_data[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::std_msgs::Float64MultiArray_<ContainerAllocator> >::stream(s, indent + "    ", v.multi_joint_data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // DG_MSGS_MESSAGE_GETMULTIJOINTDATARESPONSE_H
