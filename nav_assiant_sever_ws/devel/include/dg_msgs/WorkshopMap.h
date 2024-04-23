// Generated by gencpp from file dg_msgs/WorkshopMap.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_WORKSHOPMAP_H
#define DG_MSGS_MESSAGE_WORKSHOPMAP_H

#include <ros/service_traits.h>


#include <dg_msgs/WorkshopMapRequest.h>
#include <dg_msgs/WorkshopMapResponse.h>


namespace dg_msgs
{

struct WorkshopMap
{

typedef WorkshopMapRequest Request;
typedef WorkshopMapResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct WorkshopMap
} // namespace dg_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::dg_msgs::WorkshopMap > {
  static const char* value()
  {
    return "6492c325ba20fade9dfa2542bc679f51";
  }

  static const char* value(const ::dg_msgs::WorkshopMap&) { return value(); }
};

template<>
struct DataType< ::dg_msgs::WorkshopMap > {
  static const char* value()
  {
    return "dg_msgs/WorkshopMap";
  }

  static const char* value(const ::dg_msgs::WorkshopMap&) { return value(); }
};


// service_traits::MD5Sum< ::dg_msgs::WorkshopMapRequest> should match
// service_traits::MD5Sum< ::dg_msgs::WorkshopMap >
template<>
struct MD5Sum< ::dg_msgs::WorkshopMapRequest>
{
  static const char* value()
  {
    return MD5Sum< ::dg_msgs::WorkshopMap >::value();
  }
  static const char* value(const ::dg_msgs::WorkshopMapRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::dg_msgs::WorkshopMapRequest> should match
// service_traits::DataType< ::dg_msgs::WorkshopMap >
template<>
struct DataType< ::dg_msgs::WorkshopMapRequest>
{
  static const char* value()
  {
    return DataType< ::dg_msgs::WorkshopMap >::value();
  }
  static const char* value(const ::dg_msgs::WorkshopMapRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::dg_msgs::WorkshopMapResponse> should match
// service_traits::MD5Sum< ::dg_msgs::WorkshopMap >
template<>
struct MD5Sum< ::dg_msgs::WorkshopMapResponse>
{
  static const char* value()
  {
    return MD5Sum< ::dg_msgs::WorkshopMap >::value();
  }
  static const char* value(const ::dg_msgs::WorkshopMapResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::dg_msgs::WorkshopMapResponse> should match
// service_traits::DataType< ::dg_msgs::WorkshopMap >
template<>
struct DataType< ::dg_msgs::WorkshopMapResponse>
{
  static const char* value()
  {
    return DataType< ::dg_msgs::WorkshopMap >::value();
  }
  static const char* value(const ::dg_msgs::WorkshopMapResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DG_MSGS_MESSAGE_WORKSHOPMAP_H
