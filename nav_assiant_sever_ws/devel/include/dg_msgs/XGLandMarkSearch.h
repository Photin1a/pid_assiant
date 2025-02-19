// Generated by gencpp from file dg_msgs/XGLandMarkSearch.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_XGLANDMARKSEARCH_H
#define DG_MSGS_MESSAGE_XGLANDMARKSEARCH_H

#include <ros/service_traits.h>


#include <dg_msgs/XGLandMarkSearchRequest.h>
#include <dg_msgs/XGLandMarkSearchResponse.h>


namespace dg_msgs
{

struct XGLandMarkSearch
{

typedef XGLandMarkSearchRequest Request;
typedef XGLandMarkSearchResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct XGLandMarkSearch
} // namespace dg_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::dg_msgs::XGLandMarkSearch > {
  static const char* value()
  {
    return "7434ec9527fdaa3278286227ab996863";
  }

  static const char* value(const ::dg_msgs::XGLandMarkSearch&) { return value(); }
};

template<>
struct DataType< ::dg_msgs::XGLandMarkSearch > {
  static const char* value()
  {
    return "dg_msgs/XGLandMarkSearch";
  }

  static const char* value(const ::dg_msgs::XGLandMarkSearch&) { return value(); }
};


// service_traits::MD5Sum< ::dg_msgs::XGLandMarkSearchRequest> should match
// service_traits::MD5Sum< ::dg_msgs::XGLandMarkSearch >
template<>
struct MD5Sum< ::dg_msgs::XGLandMarkSearchRequest>
{
  static const char* value()
  {
    return MD5Sum< ::dg_msgs::XGLandMarkSearch >::value();
  }
  static const char* value(const ::dg_msgs::XGLandMarkSearchRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::dg_msgs::XGLandMarkSearchRequest> should match
// service_traits::DataType< ::dg_msgs::XGLandMarkSearch >
template<>
struct DataType< ::dg_msgs::XGLandMarkSearchRequest>
{
  static const char* value()
  {
    return DataType< ::dg_msgs::XGLandMarkSearch >::value();
  }
  static const char* value(const ::dg_msgs::XGLandMarkSearchRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::dg_msgs::XGLandMarkSearchResponse> should match
// service_traits::MD5Sum< ::dg_msgs::XGLandMarkSearch >
template<>
struct MD5Sum< ::dg_msgs::XGLandMarkSearchResponse>
{
  static const char* value()
  {
    return MD5Sum< ::dg_msgs::XGLandMarkSearch >::value();
  }
  static const char* value(const ::dg_msgs::XGLandMarkSearchResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::dg_msgs::XGLandMarkSearchResponse> should match
// service_traits::DataType< ::dg_msgs::XGLandMarkSearch >
template<>
struct DataType< ::dg_msgs::XGLandMarkSearchResponse>
{
  static const char* value()
  {
    return DataType< ::dg_msgs::XGLandMarkSearch >::value();
  }
  static const char* value(const ::dg_msgs::XGLandMarkSearchResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DG_MSGS_MESSAGE_XGLANDMARKSEARCH_H
