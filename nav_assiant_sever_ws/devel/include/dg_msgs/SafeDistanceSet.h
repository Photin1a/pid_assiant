// Generated by gencpp from file dg_msgs/SafeDistanceSet.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_SAFEDISTANCESET_H
#define DG_MSGS_MESSAGE_SAFEDISTANCESET_H

#include <ros/service_traits.h>


#include <dg_msgs/SafeDistanceSetRequest.h>
#include <dg_msgs/SafeDistanceSetResponse.h>


namespace dg_msgs
{

struct SafeDistanceSet
{

typedef SafeDistanceSetRequest Request;
typedef SafeDistanceSetResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SafeDistanceSet
} // namespace dg_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::dg_msgs::SafeDistanceSet > {
  static const char* value()
  {
    return "9307e5f93fb0e682667be999235986b8";
  }

  static const char* value(const ::dg_msgs::SafeDistanceSet&) { return value(); }
};

template<>
struct DataType< ::dg_msgs::SafeDistanceSet > {
  static const char* value()
  {
    return "dg_msgs/SafeDistanceSet";
  }

  static const char* value(const ::dg_msgs::SafeDistanceSet&) { return value(); }
};


// service_traits::MD5Sum< ::dg_msgs::SafeDistanceSetRequest> should match
// service_traits::MD5Sum< ::dg_msgs::SafeDistanceSet >
template<>
struct MD5Sum< ::dg_msgs::SafeDistanceSetRequest>
{
  static const char* value()
  {
    return MD5Sum< ::dg_msgs::SafeDistanceSet >::value();
  }
  static const char* value(const ::dg_msgs::SafeDistanceSetRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::dg_msgs::SafeDistanceSetRequest> should match
// service_traits::DataType< ::dg_msgs::SafeDistanceSet >
template<>
struct DataType< ::dg_msgs::SafeDistanceSetRequest>
{
  static const char* value()
  {
    return DataType< ::dg_msgs::SafeDistanceSet >::value();
  }
  static const char* value(const ::dg_msgs::SafeDistanceSetRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::dg_msgs::SafeDistanceSetResponse> should match
// service_traits::MD5Sum< ::dg_msgs::SafeDistanceSet >
template<>
struct MD5Sum< ::dg_msgs::SafeDistanceSetResponse>
{
  static const char* value()
  {
    return MD5Sum< ::dg_msgs::SafeDistanceSet >::value();
  }
  static const char* value(const ::dg_msgs::SafeDistanceSetResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::dg_msgs::SafeDistanceSetResponse> should match
// service_traits::DataType< ::dg_msgs::SafeDistanceSet >
template<>
struct DataType< ::dg_msgs::SafeDistanceSetResponse>
{
  static const char* value()
  {
    return DataType< ::dg_msgs::SafeDistanceSet >::value();
  }
  static const char* value(const ::dg_msgs::SafeDistanceSetResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DG_MSGS_MESSAGE_SAFEDISTANCESET_H
