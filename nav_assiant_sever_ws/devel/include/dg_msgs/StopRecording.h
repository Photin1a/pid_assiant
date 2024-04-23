// Generated by gencpp from file dg_msgs/StopRecording.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_STOPRECORDING_H
#define DG_MSGS_MESSAGE_STOPRECORDING_H

#include <ros/service_traits.h>


#include <dg_msgs/StopRecordingRequest.h>
#include <dg_msgs/StopRecordingResponse.h>


namespace dg_msgs
{

struct StopRecording
{

typedef StopRecordingRequest Request;
typedef StopRecordingResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct StopRecording
} // namespace dg_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::dg_msgs::StopRecording > {
  static const char* value()
  {
    return "7fc6f9833a3bb944adf806dfe5ac2a3b";
  }

  static const char* value(const ::dg_msgs::StopRecording&) { return value(); }
};

template<>
struct DataType< ::dg_msgs::StopRecording > {
  static const char* value()
  {
    return "dg_msgs/StopRecording";
  }

  static const char* value(const ::dg_msgs::StopRecording&) { return value(); }
};


// service_traits::MD5Sum< ::dg_msgs::StopRecordingRequest> should match
// service_traits::MD5Sum< ::dg_msgs::StopRecording >
template<>
struct MD5Sum< ::dg_msgs::StopRecordingRequest>
{
  static const char* value()
  {
    return MD5Sum< ::dg_msgs::StopRecording >::value();
  }
  static const char* value(const ::dg_msgs::StopRecordingRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::dg_msgs::StopRecordingRequest> should match
// service_traits::DataType< ::dg_msgs::StopRecording >
template<>
struct DataType< ::dg_msgs::StopRecordingRequest>
{
  static const char* value()
  {
    return DataType< ::dg_msgs::StopRecording >::value();
  }
  static const char* value(const ::dg_msgs::StopRecordingRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::dg_msgs::StopRecordingResponse> should match
// service_traits::MD5Sum< ::dg_msgs::StopRecording >
template<>
struct MD5Sum< ::dg_msgs::StopRecordingResponse>
{
  static const char* value()
  {
    return MD5Sum< ::dg_msgs::StopRecording >::value();
  }
  static const char* value(const ::dg_msgs::StopRecordingResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::dg_msgs::StopRecordingResponse> should match
// service_traits::DataType< ::dg_msgs::StopRecording >
template<>
struct DataType< ::dg_msgs::StopRecordingResponse>
{
  static const char* value()
  {
    return DataType< ::dg_msgs::StopRecording >::value();
  }
  static const char* value(const ::dg_msgs::StopRecordingResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DG_MSGS_MESSAGE_STOPRECORDING_H
