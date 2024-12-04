// Generated by gencpp from file turn_on_wheeltec_robot/C_pose.msg
// DO NOT EDIT!


#ifndef TURN_ON_WHEELTEC_ROBOT_MESSAGE_C_POSE_H
#define TURN_ON_WHEELTEC_ROBOT_MESSAGE_C_POSE_H

#include <ros/service_traits.h>


#include <turn_on_wheeltec_robot/C_poseRequest.h>
#include <turn_on_wheeltec_robot/C_poseResponse.h>


namespace turn_on_wheeltec_robot
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
} // namespace turn_on_wheeltec_robot


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::turn_on_wheeltec_robot::C_pose > {
  static const char* value()
  {
    return "c5d18bef2da6b3fa66babcd6adf5167e";
  }

  static const char* value(const ::turn_on_wheeltec_robot::C_pose&) { return value(); }
};

template<>
struct DataType< ::turn_on_wheeltec_robot::C_pose > {
  static const char* value()
  {
    return "turn_on_wheeltec_robot/C_pose";
  }

  static const char* value(const ::turn_on_wheeltec_robot::C_pose&) { return value(); }
};


// service_traits::MD5Sum< ::turn_on_wheeltec_robot::C_poseRequest> should match
// service_traits::MD5Sum< ::turn_on_wheeltec_robot::C_pose >
template<>
struct MD5Sum< ::turn_on_wheeltec_robot::C_poseRequest>
{
  static const char* value()
  {
    return MD5Sum< ::turn_on_wheeltec_robot::C_pose >::value();
  }
  static const char* value(const ::turn_on_wheeltec_robot::C_poseRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::turn_on_wheeltec_robot::C_poseRequest> should match
// service_traits::DataType< ::turn_on_wheeltec_robot::C_pose >
template<>
struct DataType< ::turn_on_wheeltec_robot::C_poseRequest>
{
  static const char* value()
  {
    return DataType< ::turn_on_wheeltec_robot::C_pose >::value();
  }
  static const char* value(const ::turn_on_wheeltec_robot::C_poseRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::turn_on_wheeltec_robot::C_poseResponse> should match
// service_traits::MD5Sum< ::turn_on_wheeltec_robot::C_pose >
template<>
struct MD5Sum< ::turn_on_wheeltec_robot::C_poseResponse>
{
  static const char* value()
  {
    return MD5Sum< ::turn_on_wheeltec_robot::C_pose >::value();
  }
  static const char* value(const ::turn_on_wheeltec_robot::C_poseResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::turn_on_wheeltec_robot::C_poseResponse> should match
// service_traits::DataType< ::turn_on_wheeltec_robot::C_pose >
template<>
struct DataType< ::turn_on_wheeltec_robot::C_poseResponse>
{
  static const char* value()
  {
    return DataType< ::turn_on_wheeltec_robot::C_pose >::value();
  }
  static const char* value(const ::turn_on_wheeltec_robot::C_poseResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TURN_ON_WHEELTEC_ROBOT_MESSAGE_C_POSE_H