// Generated by gencpp from file dg_msgs/potential_cloud.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_POTENTIAL_CLOUD_H
#define DG_MSGS_MESSAGE_POTENTIAL_CLOUD_H

#include <ros/service_traits.h>


#include <dg_msgs/potential_cloudRequest.h>
#include <dg_msgs/potential_cloudResponse.h>


namespace dg_msgs
{

struct potential_cloud
{

typedef potential_cloudRequest Request;
typedef potential_cloudResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct potential_cloud
} // namespace dg_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::dg_msgs::potential_cloud > {
  static const char* value()
  {
    return "73d2c4d627d9757c7b058b1b0296d8a7";
  }

  static const char* value(const ::dg_msgs::potential_cloud&) { return value(); }
};

template<>
struct DataType< ::dg_msgs::potential_cloud > {
  static const char* value()
  {
    return "dg_msgs/potential_cloud";
  }

  static const char* value(const ::dg_msgs::potential_cloud&) { return value(); }
};


// service_traits::MD5Sum< ::dg_msgs::potential_cloudRequest> should match
// service_traits::MD5Sum< ::dg_msgs::potential_cloud >
template<>
struct MD5Sum< ::dg_msgs::potential_cloudRequest>
{
  static const char* value()
  {
    return MD5Sum< ::dg_msgs::potential_cloud >::value();
  }
  static const char* value(const ::dg_msgs::potential_cloudRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::dg_msgs::potential_cloudRequest> should match
// service_traits::DataType< ::dg_msgs::potential_cloud >
template<>
struct DataType< ::dg_msgs::potential_cloudRequest>
{
  static const char* value()
  {
    return DataType< ::dg_msgs::potential_cloud >::value();
  }
  static const char* value(const ::dg_msgs::potential_cloudRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::dg_msgs::potential_cloudResponse> should match
// service_traits::MD5Sum< ::dg_msgs::potential_cloud >
template<>
struct MD5Sum< ::dg_msgs::potential_cloudResponse>
{
  static const char* value()
  {
    return MD5Sum< ::dg_msgs::potential_cloud >::value();
  }
  static const char* value(const ::dg_msgs::potential_cloudResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::dg_msgs::potential_cloudResponse> should match
// service_traits::DataType< ::dg_msgs::potential_cloud >
template<>
struct DataType< ::dg_msgs::potential_cloudResponse>
{
  static const char* value()
  {
    return DataType< ::dg_msgs::potential_cloud >::value();
  }
  static const char* value(const ::dg_msgs::potential_cloudResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DG_MSGS_MESSAGE_POTENTIAL_CLOUD_H
