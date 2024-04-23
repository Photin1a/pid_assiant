// Generated by gencpp from file dg_msgs/SetNavMode.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_SETNAVMODE_H
#define DG_MSGS_MESSAGE_SETNAVMODE_H

#include <ros/service_traits.h>


#include <dg_msgs/SetNavModeRequest.h>
#include <dg_msgs/SetNavModeResponse.h>


namespace dg_msgs
{

struct SetNavMode
{

typedef SetNavModeRequest Request;
typedef SetNavModeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetNavMode
} // namespace dg_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::dg_msgs::SetNavMode > {
  static const char* value()
  {
    return "5866fc4438ca78f5db31e326c2742d07";
  }

  static const char* value(const ::dg_msgs::SetNavMode&) { return value(); }
};

template<>
struct DataType< ::dg_msgs::SetNavMode > {
  static const char* value()
  {
    return "dg_msgs/SetNavMode";
  }

  static const char* value(const ::dg_msgs::SetNavMode&) { return value(); }
};


// service_traits::MD5Sum< ::dg_msgs::SetNavModeRequest> should match
// service_traits::MD5Sum< ::dg_msgs::SetNavMode >
template<>
struct MD5Sum< ::dg_msgs::SetNavModeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::dg_msgs::SetNavMode >::value();
  }
  static const char* value(const ::dg_msgs::SetNavModeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::dg_msgs::SetNavModeRequest> should match
// service_traits::DataType< ::dg_msgs::SetNavMode >
template<>
struct DataType< ::dg_msgs::SetNavModeRequest>
{
  static const char* value()
  {
    return DataType< ::dg_msgs::SetNavMode >::value();
  }
  static const char* value(const ::dg_msgs::SetNavModeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::dg_msgs::SetNavModeResponse> should match
// service_traits::MD5Sum< ::dg_msgs::SetNavMode >
template<>
struct MD5Sum< ::dg_msgs::SetNavModeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::dg_msgs::SetNavMode >::value();
  }
  static const char* value(const ::dg_msgs::SetNavModeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::dg_msgs::SetNavModeResponse> should match
// service_traits::DataType< ::dg_msgs::SetNavMode >
template<>
struct DataType< ::dg_msgs::SetNavModeResponse>
{
  static const char* value()
  {
    return DataType< ::dg_msgs::SetNavMode >::value();
  }
  static const char* value(const ::dg_msgs::SetNavModeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DG_MSGS_MESSAGE_SETNAVMODE_H
