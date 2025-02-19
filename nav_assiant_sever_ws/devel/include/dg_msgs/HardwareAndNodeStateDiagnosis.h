// Generated by gencpp from file dg_msgs/HardwareAndNodeStateDiagnosis.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_HARDWAREANDNODESTATEDIAGNOSIS_H
#define DG_MSGS_MESSAGE_HARDWAREANDNODESTATEDIAGNOSIS_H

#include <ros/service_traits.h>


#include <dg_msgs/HardwareAndNodeStateDiagnosisRequest.h>
#include <dg_msgs/HardwareAndNodeStateDiagnosisResponse.h>


namespace dg_msgs
{

struct HardwareAndNodeStateDiagnosis
{

typedef HardwareAndNodeStateDiagnosisRequest Request;
typedef HardwareAndNodeStateDiagnosisResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct HardwareAndNodeStateDiagnosis
} // namespace dg_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::dg_msgs::HardwareAndNodeStateDiagnosis > {
  static const char* value()
  {
    return "d08725ae8368788fa09714c61c612f6c";
  }

  static const char* value(const ::dg_msgs::HardwareAndNodeStateDiagnosis&) { return value(); }
};

template<>
struct DataType< ::dg_msgs::HardwareAndNodeStateDiagnosis > {
  static const char* value()
  {
    return "dg_msgs/HardwareAndNodeStateDiagnosis";
  }

  static const char* value(const ::dg_msgs::HardwareAndNodeStateDiagnosis&) { return value(); }
};


// service_traits::MD5Sum< ::dg_msgs::HardwareAndNodeStateDiagnosisRequest> should match
// service_traits::MD5Sum< ::dg_msgs::HardwareAndNodeStateDiagnosis >
template<>
struct MD5Sum< ::dg_msgs::HardwareAndNodeStateDiagnosisRequest>
{
  static const char* value()
  {
    return MD5Sum< ::dg_msgs::HardwareAndNodeStateDiagnosis >::value();
  }
  static const char* value(const ::dg_msgs::HardwareAndNodeStateDiagnosisRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::dg_msgs::HardwareAndNodeStateDiagnosisRequest> should match
// service_traits::DataType< ::dg_msgs::HardwareAndNodeStateDiagnosis >
template<>
struct DataType< ::dg_msgs::HardwareAndNodeStateDiagnosisRequest>
{
  static const char* value()
  {
    return DataType< ::dg_msgs::HardwareAndNodeStateDiagnosis >::value();
  }
  static const char* value(const ::dg_msgs::HardwareAndNodeStateDiagnosisRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::dg_msgs::HardwareAndNodeStateDiagnosisResponse> should match
// service_traits::MD5Sum< ::dg_msgs::HardwareAndNodeStateDiagnosis >
template<>
struct MD5Sum< ::dg_msgs::HardwareAndNodeStateDiagnosisResponse>
{
  static const char* value()
  {
    return MD5Sum< ::dg_msgs::HardwareAndNodeStateDiagnosis >::value();
  }
  static const char* value(const ::dg_msgs::HardwareAndNodeStateDiagnosisResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::dg_msgs::HardwareAndNodeStateDiagnosisResponse> should match
// service_traits::DataType< ::dg_msgs::HardwareAndNodeStateDiagnosis >
template<>
struct DataType< ::dg_msgs::HardwareAndNodeStateDiagnosisResponse>
{
  static const char* value()
  {
    return DataType< ::dg_msgs::HardwareAndNodeStateDiagnosis >::value();
  }
  static const char* value(const ::dg_msgs::HardwareAndNodeStateDiagnosisResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DG_MSGS_MESSAGE_HARDWAREANDNODESTATEDIAGNOSIS_H
