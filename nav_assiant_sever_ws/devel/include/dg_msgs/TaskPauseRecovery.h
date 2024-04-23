// Generated by gencpp from file dg_msgs/TaskPauseRecovery.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_TASKPAUSERECOVERY_H
#define DG_MSGS_MESSAGE_TASKPAUSERECOVERY_H

#include <ros/service_traits.h>


#include <dg_msgs/TaskPauseRecoveryRequest.h>
#include <dg_msgs/TaskPauseRecoveryResponse.h>


namespace dg_msgs
{

struct TaskPauseRecovery
{

typedef TaskPauseRecoveryRequest Request;
typedef TaskPauseRecoveryResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct TaskPauseRecovery
} // namespace dg_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::dg_msgs::TaskPauseRecovery > {
  static const char* value()
  {
    return "3ad2694b73fbad8069428f9f9462a738";
  }

  static const char* value(const ::dg_msgs::TaskPauseRecovery&) { return value(); }
};

template<>
struct DataType< ::dg_msgs::TaskPauseRecovery > {
  static const char* value()
  {
    return "dg_msgs/TaskPauseRecovery";
  }

  static const char* value(const ::dg_msgs::TaskPauseRecovery&) { return value(); }
};


// service_traits::MD5Sum< ::dg_msgs::TaskPauseRecoveryRequest> should match
// service_traits::MD5Sum< ::dg_msgs::TaskPauseRecovery >
template<>
struct MD5Sum< ::dg_msgs::TaskPauseRecoveryRequest>
{
  static const char* value()
  {
    return MD5Sum< ::dg_msgs::TaskPauseRecovery >::value();
  }
  static const char* value(const ::dg_msgs::TaskPauseRecoveryRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::dg_msgs::TaskPauseRecoveryRequest> should match
// service_traits::DataType< ::dg_msgs::TaskPauseRecovery >
template<>
struct DataType< ::dg_msgs::TaskPauseRecoveryRequest>
{
  static const char* value()
  {
    return DataType< ::dg_msgs::TaskPauseRecovery >::value();
  }
  static const char* value(const ::dg_msgs::TaskPauseRecoveryRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::dg_msgs::TaskPauseRecoveryResponse> should match
// service_traits::MD5Sum< ::dg_msgs::TaskPauseRecovery >
template<>
struct MD5Sum< ::dg_msgs::TaskPauseRecoveryResponse>
{
  static const char* value()
  {
    return MD5Sum< ::dg_msgs::TaskPauseRecovery >::value();
  }
  static const char* value(const ::dg_msgs::TaskPauseRecoveryResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::dg_msgs::TaskPauseRecoveryResponse> should match
// service_traits::DataType< ::dg_msgs::TaskPauseRecovery >
template<>
struct DataType< ::dg_msgs::TaskPauseRecoveryResponse>
{
  static const char* value()
  {
    return DataType< ::dg_msgs::TaskPauseRecovery >::value();
  }
  static const char* value(const ::dg_msgs::TaskPauseRecoveryResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DG_MSGS_MESSAGE_TASKPAUSERECOVERY_H
