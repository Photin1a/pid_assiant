// Generated by gencpp from file dg_msgs/PcdRegistration.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_PCDREGISTRATION_H
#define DG_MSGS_MESSAGE_PCDREGISTRATION_H

#include <ros/service_traits.h>


#include <dg_msgs/PcdRegistrationRequest.h>
#include <dg_msgs/PcdRegistrationResponse.h>


namespace dg_msgs
{

struct PcdRegistration
{

typedef PcdRegistrationRequest Request;
typedef PcdRegistrationResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct PcdRegistration
} // namespace dg_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::dg_msgs::PcdRegistration > {
  static const char* value()
  {
    return "5bd0e2fcf9944d063d5fa39205fff5d3";
  }

  static const char* value(const ::dg_msgs::PcdRegistration&) { return value(); }
};

template<>
struct DataType< ::dg_msgs::PcdRegistration > {
  static const char* value()
  {
    return "dg_msgs/PcdRegistration";
  }

  static const char* value(const ::dg_msgs::PcdRegistration&) { return value(); }
};


// service_traits::MD5Sum< ::dg_msgs::PcdRegistrationRequest> should match
// service_traits::MD5Sum< ::dg_msgs::PcdRegistration >
template<>
struct MD5Sum< ::dg_msgs::PcdRegistrationRequest>
{
  static const char* value()
  {
    return MD5Sum< ::dg_msgs::PcdRegistration >::value();
  }
  static const char* value(const ::dg_msgs::PcdRegistrationRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::dg_msgs::PcdRegistrationRequest> should match
// service_traits::DataType< ::dg_msgs::PcdRegistration >
template<>
struct DataType< ::dg_msgs::PcdRegistrationRequest>
{
  static const char* value()
  {
    return DataType< ::dg_msgs::PcdRegistration >::value();
  }
  static const char* value(const ::dg_msgs::PcdRegistrationRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::dg_msgs::PcdRegistrationResponse> should match
// service_traits::MD5Sum< ::dg_msgs::PcdRegistration >
template<>
struct MD5Sum< ::dg_msgs::PcdRegistrationResponse>
{
  static const char* value()
  {
    return MD5Sum< ::dg_msgs::PcdRegistration >::value();
  }
  static const char* value(const ::dg_msgs::PcdRegistrationResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::dg_msgs::PcdRegistrationResponse> should match
// service_traits::DataType< ::dg_msgs::PcdRegistration >
template<>
struct DataType< ::dg_msgs::PcdRegistrationResponse>
{
  static const char* value()
  {
    return DataType< ::dg_msgs::PcdRegistration >::value();
  }
  static const char* value(const ::dg_msgs::PcdRegistrationResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DG_MSGS_MESSAGE_PCDREGISTRATION_H
