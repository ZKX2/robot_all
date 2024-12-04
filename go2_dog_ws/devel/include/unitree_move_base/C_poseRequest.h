// Generated by gencpp from file unitree_move_base/C_poseRequest.msg
// DO NOT EDIT!


#ifndef UNITREE_MOVE_BASE_MESSAGE_C_POSEREQUEST_H
#define UNITREE_MOVE_BASE_MESSAGE_C_POSEREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace unitree_move_base
{
template <class ContainerAllocator>
struct C_poseRequest_
{
  typedef C_poseRequest_<ContainerAllocator> Type;

  C_poseRequest_()
    : pose_x(0.0)
    , pose_y(0.0)
    , pose_z(0.0)
    , theta(0.0)  {
    }
  C_poseRequest_(const ContainerAllocator& _alloc)
    : pose_x(0.0)
    , pose_y(0.0)
    , pose_z(0.0)
    , theta(0.0)  {
  (void)_alloc;
    }



   typedef double _pose_x_type;
  _pose_x_type pose_x;

   typedef double _pose_y_type;
  _pose_y_type pose_y;

   typedef double _pose_z_type;
  _pose_z_type pose_z;

   typedef double _theta_type;
  _theta_type theta;





  typedef boost::shared_ptr< ::unitree_move_base::C_poseRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::unitree_move_base::C_poseRequest_<ContainerAllocator> const> ConstPtr;

}; // struct C_poseRequest_

typedef ::unitree_move_base::C_poseRequest_<std::allocator<void> > C_poseRequest;

typedef boost::shared_ptr< ::unitree_move_base::C_poseRequest > C_poseRequestPtr;
typedef boost::shared_ptr< ::unitree_move_base::C_poseRequest const> C_poseRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::unitree_move_base::C_poseRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::unitree_move_base::C_poseRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::unitree_move_base::C_poseRequest_<ContainerAllocator1> & lhs, const ::unitree_move_base::C_poseRequest_<ContainerAllocator2> & rhs)
{
  return lhs.pose_x == rhs.pose_x &&
    lhs.pose_y == rhs.pose_y &&
    lhs.pose_z == rhs.pose_z &&
    lhs.theta == rhs.theta;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::unitree_move_base::C_poseRequest_<ContainerAllocator1> & lhs, const ::unitree_move_base::C_poseRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace unitree_move_base

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::unitree_move_base::C_poseRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::unitree_move_base::C_poseRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::unitree_move_base::C_poseRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::unitree_move_base::C_poseRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::unitree_move_base::C_poseRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::unitree_move_base::C_poseRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::unitree_move_base::C_poseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bffe34d3b6040ff08bd1aaf1234e52df";
  }

  static const char* value(const ::unitree_move_base::C_poseRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbffe34d3b6040ff0ULL;
  static const uint64_t static_value2 = 0x8bd1aaf1234e52dfULL;
};

template<class ContainerAllocator>
struct DataType< ::unitree_move_base::C_poseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "unitree_move_base/C_poseRequest";
  }

  static const char* value(const ::unitree_move_base::C_poseRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::unitree_move_base::C_poseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 pose_x\n"
"float64 pose_y\n"
"float64 pose_z\n"
"float64 theta\n"
"\n"
;
  }

  static const char* value(const ::unitree_move_base::C_poseRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::unitree_move_base::C_poseRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pose_x);
      stream.next(m.pose_y);
      stream.next(m.pose_z);
      stream.next(m.theta);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct C_poseRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::unitree_move_base::C_poseRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::unitree_move_base::C_poseRequest_<ContainerAllocator>& v)
  {
    s << indent << "pose_x: ";
    Printer<double>::stream(s, indent + "  ", v.pose_x);
    s << indent << "pose_y: ";
    Printer<double>::stream(s, indent + "  ", v.pose_y);
    s << indent << "pose_z: ";
    Printer<double>::stream(s, indent + "  ", v.pose_z);
    s << indent << "theta: ";
    Printer<double>::stream(s, indent + "  ", v.theta);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UNITREE_MOVE_BASE_MESSAGE_C_POSEREQUEST_H
