// Generated by gencpp from file dg_msgs/SoundAudioControl.msg
// DO NOT EDIT!


#ifndef DG_MSGS_MESSAGE_SOUNDAUDIOCONTROL_H
#define DG_MSGS_MESSAGE_SOUNDAUDIOCONTROL_H

#include <ros/service_traits.h>


#include <dg_msgs/SoundAudioControlRequest.h>
#include <dg_msgs/SoundAudioControlResponse.h>


namespace dg_msgs
{

struct SoundAudioControl
{

typedef SoundAudioControlRequest Request;
typedef SoundAudioControlResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SoundAudioControl
} // namespace dg_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::dg_msgs::SoundAudioControl > {
  static const char* value()
  {
    return "274ab99c5d36f88cae47c4b4e730d64c";
  }

  static const char* value(const ::dg_msgs::SoundAudioControl&) { return value(); }
};

template<>
struct DataType< ::dg_msgs::SoundAudioControl > {
  static const char* value()
  {
    return "dg_msgs/SoundAudioControl";
  }

  static const char* value(const ::dg_msgs::SoundAudioControl&) { return value(); }
};


// service_traits::MD5Sum< ::dg_msgs::SoundAudioControlRequest> should match
// service_traits::MD5Sum< ::dg_msgs::SoundAudioControl >
template<>
struct MD5Sum< ::dg_msgs::SoundAudioControlRequest>
{
  static const char* value()
  {
    return MD5Sum< ::dg_msgs::SoundAudioControl >::value();
  }
  static const char* value(const ::dg_msgs::SoundAudioControlRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::dg_msgs::SoundAudioControlRequest> should match
// service_traits::DataType< ::dg_msgs::SoundAudioControl >
template<>
struct DataType< ::dg_msgs::SoundAudioControlRequest>
{
  static const char* value()
  {
    return DataType< ::dg_msgs::SoundAudioControl >::value();
  }
  static const char* value(const ::dg_msgs::SoundAudioControlRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::dg_msgs::SoundAudioControlResponse> should match
// service_traits::MD5Sum< ::dg_msgs::SoundAudioControl >
template<>
struct MD5Sum< ::dg_msgs::SoundAudioControlResponse>
{
  static const char* value()
  {
    return MD5Sum< ::dg_msgs::SoundAudioControl >::value();
  }
  static const char* value(const ::dg_msgs::SoundAudioControlResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::dg_msgs::SoundAudioControlResponse> should match
// service_traits::DataType< ::dg_msgs::SoundAudioControl >
template<>
struct DataType< ::dg_msgs::SoundAudioControlResponse>
{
  static const char* value()
  {
    return DataType< ::dg_msgs::SoundAudioControl >::value();
  }
  static const char* value(const ::dg_msgs::SoundAudioControlResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DG_MSGS_MESSAGE_SOUNDAUDIOCONTROL_H
