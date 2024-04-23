// Generated by gencpp from file dg_msgs/InterploateResponse.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_INTERPLOATERESPONSE_H
#define DG_MSGS_MESSAGE_INTERPLOATERESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <dg_msgs/TrainDataSet.h>

namespace dg_msgs
{
template <class ContainerAllocator>
struct InterploateResponse_
{
  typedef InterploateResponse_<ContainerAllocator> Type;

  InterploateResponse_()
    : pose_dataset_array()  {
    }
  InterploateResponse_(const ContainerAllocator& _alloc)
    : pose_dataset_array(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::dg_msgs::TrainDataSet_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::dg_msgs::TrainDataSet_<ContainerAllocator> >> _pose_dataset_array_type;
  _pose_dataset_array_type pose_dataset_array;





  typedef boost::shared_ptr< ::dg_msgs::InterploateResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dg_msgs::InterploateResponse_<ContainerAllocator> const> ConstPtr;

}; // struct InterploateResponse_

typedef ::dg_msgs::InterploateResponse_<std::allocator<void> > InterploateResponse;

typedef boost::shared_ptr< ::dg_msgs::InterploateResponse > InterploateResponsePtr;
typedef boost::shared_ptr< ::dg_msgs::InterploateResponse const> InterploateResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dg_msgs::InterploateResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dg_msgs::InterploateResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dg_msgs::InterploateResponse_<ContainerAllocator1> & lhs, const ::dg_msgs::InterploateResponse_<ContainerAllocator2> & rhs)
{
  return lhs.pose_dataset_array == rhs.pose_dataset_array;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dg_msgs::InterploateResponse_<ContainerAllocator1> & lhs, const ::dg_msgs::InterploateResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dg_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::InterploateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dg_msgs::InterploateResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::InterploateResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dg_msgs::InterploateResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::InterploateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dg_msgs::InterploateResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dg_msgs::InterploateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3e20d24397c619d7b865326762c629d1";
  }

  static const char* value(const ::dg_msgs::InterploateResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3e20d24397c619d7ULL;
  static const uint64_t static_value2 = 0xb865326762c629d1ULL;
};

template<class ContainerAllocator>
struct DataType< ::dg_msgs::InterploateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dg_msgs/InterploateResponse";
  }

  static const char* value(const ::dg_msgs::InterploateResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dg_msgs::InterploateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "TrainDataSet[]                  pose_dataset_array\n"
"\n"
"================================================================================\n"
"MSG: dg_msgs/TrainDataSet\n"
"geometry_msgs/Pose pose_data\n"
"std_msgs/Float64MultiArray[] multi_joint_data\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
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

  static const char* value(const ::dg_msgs::InterploateResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dg_msgs::InterploateResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pose_dataset_array);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct InterploateResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dg_msgs::InterploateResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dg_msgs::InterploateResponse_<ContainerAllocator>& v)
  {
    s << indent << "pose_dataset_array[]" << std::endl;
    for (size_t i = 0; i < v.pose_dataset_array.size(); ++i)
    {
      s << indent << "  pose_dataset_array[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::dg_msgs::TrainDataSet_<ContainerAllocator> >::stream(s, indent + "    ", v.pose_dataset_array[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // DG_MSGS_MESSAGE_INTERPLOATERESPONSE_H
