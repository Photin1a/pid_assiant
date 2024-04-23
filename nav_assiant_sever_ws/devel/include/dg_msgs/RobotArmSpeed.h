// Generated by gencpp from file dg_msgs/RobotArmSpeed.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_ROBOTARMSPEED_H
#define DG_MSGS_MESSAGE_ROBOTARMSPEED_H

#include <ros/service_traits.h>


#include <dg_msgs/RobotArmSpeedRequest.h>
#include <dg_msgs/RobotArmSpeedResponse.h>


namespace dg_msgs
{

struct RobotArmSpeed
{

typedef RobotArmSpeedRequest Request;
typedef RobotArmSpeedResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct RobotArmSpeed
} // namespace dg_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::dg_msgs::RobotArmSpeed > {
  static const char* value()
  {
    return "8f2a3742ee2fc517393c2bd0f5bce150";
  }

  static const char* value(const ::dg_msgs::RobotArmSpeed&) { return value(); }
};

template<>
struct DataType< ::dg_msgs::RobotArmSpeed > {
  static const char* value()
  {
    return "dg_msgs/RobotArmSpeed";
  }

  static const char* value(const ::dg_msgs::RobotArmSpeed&) { return value(); }
};


// service_traits::MD5Sum< ::dg_msgs::RobotArmSpeedRequest> should match
// service_traits::MD5Sum< ::dg_msgs::RobotArmSpeed >
template<>
struct MD5Sum< ::dg_msgs::RobotArmSpeedRequest>
{
  static const char* value()
  {
    return MD5Sum< ::dg_msgs::RobotArmSpeed >::value();
  }
  static const char* value(const ::dg_msgs::RobotArmSpeedRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::dg_msgs::RobotArmSpeedRequest> should match
// service_traits::DataType< ::dg_msgs::RobotArmSpeed >
template<>
struct DataType< ::dg_msgs::RobotArmSpeedRequest>
{
  static const char* value()
  {
    return DataType< ::dg_msgs::RobotArmSpeed >::value();
  }
  static const char* value(const ::dg_msgs::RobotArmSpeedRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::dg_msgs::RobotArmSpeedResponse> should match
// service_traits::MD5Sum< ::dg_msgs::RobotArmSpeed >
template<>
struct MD5Sum< ::dg_msgs::RobotArmSpeedResponse>
{
  static const char* value()
  {
    return MD5Sum< ::dg_msgs::RobotArmSpeed >::value();
  }
  static const char* value(const ::dg_msgs::RobotArmSpeedResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::dg_msgs::RobotArmSpeedResponse> should match
// service_traits::DataType< ::dg_msgs::RobotArmSpeed >
template<>
struct DataType< ::dg_msgs::RobotArmSpeedResponse>
{
  static const char* value()
  {
    return DataType< ::dg_msgs::RobotArmSpeed >::value();
  }
  static const char* value(const ::dg_msgs::RobotArmSpeedResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DG_MSGS_MESSAGE_ROBOTARMSPEED_H
