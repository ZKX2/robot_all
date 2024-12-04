// Generated by gencpp from file robot_bringup/C_pose.msg
// DO NOT EDIT!


#ifndef ROBOT_BRINGUP_MESSAGE_C_POSE_H
#define ROBOT_BRINGUP_MESSAGE_C_POSE_H

#include <ros/service_traits.h>


#include <robot_bringup/C_poseRequest.h>
#include <robot_bringup/C_poseResponse.h>


namespace robot_bringup
{

struct C_pose
{

typedef C_poseRequest Request;
typedef C_poseResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct C_pose
} // namespace robot_bringup


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robot_bringup::C_pose > {
  static const char* value()
  {
    return "c5d18bef2da6b3fa66babcd6adf5167e";
  }

  static const char* value(const ::robot_bringup::C_pose&) { return value(); }
};

template<>
struct DataType< ::robot_bringup::C_pose > {
  static const char* value()
  {
    return "robot_bringup/C_pose";
  }

  static const char* value(const ::robot_bringup::C_pose&) { return value(); }
};


// service_traits::MD5Sum< ::robot_bringup::C_poseRequest> should match
// service_traits::MD5Sum< ::robot_bringup::C_pose >
template<>
struct MD5Sum< ::robot_bringup::C_poseRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robot_bringup::C_pose >::value();
  }
  static const char* value(const ::robot_bringup::C_poseRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_bringup::C_poseRequest> should match
// service_traits::DataType< ::robot_bringup::C_pose >
template<>
struct DataType< ::robot_bringup::C_poseRequest>
{
  static const char* value()
  {
    return DataType< ::robot_bringup::C_pose >::value();
  }
  static const char* value(const ::robot_bringup::C_poseRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robot_bringup::C_poseResponse> should match
// service_traits::MD5Sum< ::robot_bringup::C_pose >
template<>
struct MD5Sum< ::robot_bringup::C_poseResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robot_bringup::C_pose >::value();
  }
  static const char* value(const ::robot_bringup::C_poseResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_bringup::C_poseResponse> should match
// service_traits::DataType< ::robot_bringup::C_pose >
template<>
struct DataType< ::robot_bringup::C_poseResponse>
{
  static const char* value()
  {
    return DataType< ::robot_bringup::C_pose >::value();
  }
  static const char* value(const ::robot_bringup::C_poseResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOT_BRINGUP_MESSAGE_C_POSE_H