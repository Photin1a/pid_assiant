// Generated by gencpp from file dg_msgs/XGGoToElevator.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_XGGOTOELEVATOR_H
#define DG_MSGS_MESSAGE_XGGOTOELEVATOR_H

#include <ros/service_traits.h>


#include <dg_msgs/XGGoToElevatorRequest.h>
#include <dg_msgs/XGGoToElevatorResponse.h>


namespace dg_msgs
{

struct XGGoToElevator
{

typedef XGGoToElevatorRequest Request;
typedef XGGoToElevatorResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct XGGoToElevator
} // namespace dg_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::dg_msgs::XGGoToElevator > {
  static const char* value()
  {
    return "965d0474a6d7d045c4a405625226a152";
  }

  static const char* value(const ::dg_msgs::XGGoToElevator&) { return value(); }
};

template<>
struct DataType< ::dg_msgs::XGGoToElevator > {
  static const char* value()
  {
    return "dg_msgs/XGGoToElevator";
  }

  static const char* value(const ::dg_msgs::XGGoToElevator&) { return value(); }
};


// service_traits::MD5Sum< ::dg_msgs::XGGoToElevatorRequest> should match
// service_traits::MD5Sum< ::dg_msgs::XGGoToElevator >
template<>
struct MD5Sum< ::dg_msgs::XGGoToElevatorRequest>
{
  static const char* value()
  {
    return MD5Sum< ::dg_msgs::XGGoToElevator >::value();
  }
  static const char* value(const ::dg_msgs::XGGoToElevatorRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::dg_msgs::XGGoToElevatorRequest> should match
// service_traits::DataType< ::dg_msgs::XGGoToElevator >
template<>
struct DataType< ::dg_msgs::XGGoToElevatorRequest>
{
  static const char* value()
  {
    return DataType< ::dg_msgs::XGGoToElevator >::value();
  }
  static const char* value(const ::dg_msgs::XGGoToElevatorRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::dg_msgs::XGGoToElevatorResponse> should match
// service_traits::MD5Sum< ::dg_msgs::XGGoToElevator >
template<>
struct MD5Sum< ::dg_msgs::XGGoToElevatorResponse>
{
  static const char* value()
  {
    return MD5Sum< ::dg_msgs::XGGoToElevator >::value();
  }
  static const char* value(const ::dg_msgs::XGGoToElevatorResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::dg_msgs::XGGoToElevatorResponse> should match
// service_traits::DataType< ::dg_msgs::XGGoToElevator >
template<>
struct DataType< ::dg_msgs::XGGoToElevatorResponse>
{
  static const char* value()
  {
    return DataType< ::dg_msgs::XGGoToElevator >::value();
  }
  static const char* value(const ::dg_msgs::XGGoToElevatorResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DG_MSGS_MESSAGE_XGGOTOELEVATOR_H
