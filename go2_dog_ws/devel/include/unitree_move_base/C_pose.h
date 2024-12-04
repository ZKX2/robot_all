// Generated by gencpp from file unitree_move_base/C_pose.msg
// DO NOT EDIT!


#ifndef UNITREE_MOVE_BASE_MESSAGE_C_POSE_H
#define UNITREE_MOVE_BASE_MESSAGE_C_POSE_H

#include <ros/service_traits.h>


#include <unitree_move_base/C_poseRequest.h>
#include <unitree_move_base/C_poseResponse.h>


namespace unitree_move_base
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
} // namespace unitree_move_base


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::unitree_move_base::C_pose > {
  static const char* value()
  {
    return "c5d18bef2da6b3fa66babcd6adf5167e";
  }

  static const char* value(const ::unitree_move_base::C_pose&) { return value(); }
};

template<>
struct DataType< ::unitree_move_base::C_pose > {
  static const char* value()
  {
    return "unitree_move_base/C_pose";
  }

  static const char* value(const ::unitree_move_base::C_pose&) { return value(); }
};


// service_traits::MD5Sum< ::unitree_move_base::C_poseRequest> should match
// service_traits::MD5Sum< ::unitree_move_base::C_pose >
template<>
struct MD5Sum< ::unitree_move_base::C_poseRequest>
{
  static const char* value()
  {
    return MD5Sum< ::unitree_move_base::C_pose >::value();
  }
  static const char* value(const ::unitree_move_base::C_poseRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::unitree_move_base::C_poseRequest> should match
// service_traits::DataType< ::unitree_move_base::C_pose >
template<>
struct DataType< ::unitree_move_base::C_poseRequest>
{
  static const char* value()
  {
    return DataType< ::unitree_move_base::C_pose >::value();
  }
  static const char* value(const ::unitree_move_base::C_poseRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::unitree_move_base::C_poseResponse> should match
// service_traits::MD5Sum< ::unitree_move_base::C_pose >
template<>
struct MD5Sum< ::unitree_move_base::C_poseResponse>
{
  static const char* value()
  {
    return MD5Sum< ::unitree_move_base::C_pose >::value();
  }
  static const char* value(const ::unitree_move_base::C_poseResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::unitree_move_base::C_poseResponse> should match
// service_traits::DataType< ::unitree_move_base::C_pose >
template<>
struct DataType< ::unitree_move_base::C_poseResponse>
{
  static const char* value()
  {
    return DataType< ::unitree_move_base::C_pose >::value();
  }
  static const char* value(const ::unitree_move_base::C_poseResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // UNITREE_MOVE_BASE_MESSAGE_C_POSE_H