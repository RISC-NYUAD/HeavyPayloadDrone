// Generated by gencpp from file kinova_msgs/Arm_KinovaPoseFeedback.msg
// DO NOT EDIT!


#ifndef KINOVA_MSGS_MESSAGE_ARM_KINOVAPOSEFEEDBACK_H
#define KINOVA_MSGS_MESSAGE_ARM_KINOVAPOSEFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <kinova_msgs/KinovaPose.h>

namespace kinova_msgs
{
template <class ContainerAllocator>
struct Arm_KinovaPoseFeedback_
{
  typedef Arm_KinovaPoseFeedback_<ContainerAllocator> Type;

  Arm_KinovaPoseFeedback_()
    : kinova_pose()  {
    }
  Arm_KinovaPoseFeedback_(const ContainerAllocator& _alloc)
    : kinova_pose(_alloc)  {
  (void)_alloc;
    }



   typedef  ::kinova_msgs::KinovaPose_<ContainerAllocator>  _kinova_pose_type;
  _kinova_pose_type kinova_pose;





  typedef boost::shared_ptr< ::kinova_msgs::Arm_KinovaPoseFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kinova_msgs::Arm_KinovaPoseFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct Arm_KinovaPoseFeedback_

typedef ::kinova_msgs::Arm_KinovaPoseFeedback_<std::allocator<void> > Arm_KinovaPoseFeedback;

typedef boost::shared_ptr< ::kinova_msgs::Arm_KinovaPoseFeedback > Arm_KinovaPoseFeedbackPtr;
typedef boost::shared_ptr< ::kinova_msgs::Arm_KinovaPoseFeedback const> Arm_KinovaPoseFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kinova_msgs::Arm_KinovaPoseFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kinova_msgs::Arm_KinovaPoseFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace kinova_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'kinova_msgs': ['/home/rn1/projects/kinova-ros/src/kinova-ros/kinova_msgs/msg', '/home/rn1/projects/kinova-ros/devel/share/kinova_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::kinova_msgs::Arm_KinovaPoseFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kinova_msgs::Arm_KinovaPoseFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kinova_msgs::Arm_KinovaPoseFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kinova_msgs::Arm_KinovaPoseFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kinova_msgs::Arm_KinovaPoseFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kinova_msgs::Arm_KinovaPoseFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kinova_msgs::Arm_KinovaPoseFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a3d0acc7643d70196e513c76ce4fd6d9";
  }

  static const char* value(const ::kinova_msgs::Arm_KinovaPoseFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa3d0acc7643d7019ULL;
  static const uint64_t static_value2 = 0x6e513c76ce4fd6d9ULL;
};

template<class ContainerAllocator>
struct DataType< ::kinova_msgs::Arm_KinovaPoseFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kinova_msgs/Arm_KinovaPoseFeedback";
  }

  static const char* value(const ::kinova_msgs::Arm_KinovaPoseFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kinova_msgs::Arm_KinovaPoseFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# Feedback message\n\
KinovaPose kinova_pose\n\
\n\
================================================================================\n\
MSG: kinova_msgs/KinovaPose\n\
float32 X\n\
float32 Y\n\
float32 Z\n\
float32 ThetaX\n\
float32 ThetaY\n\
float32 ThetaZ\n\
";
  }

  static const char* value(const ::kinova_msgs::Arm_KinovaPoseFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kinova_msgs::Arm_KinovaPoseFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.kinova_pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Arm_KinovaPoseFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kinova_msgs::Arm_KinovaPoseFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kinova_msgs::Arm_KinovaPoseFeedback_<ContainerAllocator>& v)
  {
    s << indent << "kinova_pose: ";
    s << std::endl;
    Printer< ::kinova_msgs::KinovaPose_<ContainerAllocator> >::stream(s, indent + "  ", v.kinova_pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KINOVA_MSGS_MESSAGE_ARM_KINOVAPOSEFEEDBACK_H
