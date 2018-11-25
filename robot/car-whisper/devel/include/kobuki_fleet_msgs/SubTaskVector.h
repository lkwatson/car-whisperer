// Generated by gencpp from file kobuki_fleet_msgs/SubTaskVector.msg
// DO NOT EDIT!


#ifndef KOBUKI_FLEET_MSGS_MESSAGE_SUBTASKVECTOR_H
#define KOBUKI_FLEET_MSGS_MESSAGE_SUBTASKVECTOR_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <kobuki_fleet_msgs/SubTask.h>

namespace kobuki_fleet_msgs
{
template <class ContainerAllocator>
struct SubTaskVector_
{
  typedef SubTaskVector_<ContainerAllocator> Type;

  SubTaskVector_()
    : subtasks()  {
    }
  SubTaskVector_(const ContainerAllocator& _alloc)
    : subtasks(_alloc)  {
    }



   typedef std::vector< ::kobuki_fleet_msgs::SubTask_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::kobuki_fleet_msgs::SubTask_<ContainerAllocator> >::other >  _subtasks_type;
  _subtasks_type subtasks;




  typedef boost::shared_ptr< ::kobuki_fleet_msgs::SubTaskVector_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kobuki_fleet_msgs::SubTaskVector_<ContainerAllocator> const> ConstPtr;

}; // struct SubTaskVector_

typedef ::kobuki_fleet_msgs::SubTaskVector_<std::allocator<void> > SubTaskVector;

typedef boost::shared_ptr< ::kobuki_fleet_msgs::SubTaskVector > SubTaskVectorPtr;
typedef boost::shared_ptr< ::kobuki_fleet_msgs::SubTaskVector const> SubTaskVectorConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kobuki_fleet_msgs::SubTaskVector_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kobuki_fleet_msgs::SubTaskVector_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace kobuki_fleet_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'kobuki_fleet_msgs': ['/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg', '/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::kobuki_fleet_msgs::SubTaskVector_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kobuki_fleet_msgs::SubTaskVector_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kobuki_fleet_msgs::SubTaskVector_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kobuki_fleet_msgs::SubTaskVector_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kobuki_fleet_msgs::SubTaskVector_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kobuki_fleet_msgs::SubTaskVector_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kobuki_fleet_msgs::SubTaskVector_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2917f2217bff62252bf6a670f9f4e521";
  }

  static const char* value(const ::kobuki_fleet_msgs::SubTaskVector_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2917f2217bff6225ULL;
  static const uint64_t static_value2 = 0x2bf6a670f9f4e521ULL;
};

template<class ContainerAllocator>
struct DataType< ::kobuki_fleet_msgs::SubTaskVector_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kobuki_fleet_msgs/SubTaskVector";
  }

  static const char* value(const ::kobuki_fleet_msgs::SubTaskVector_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kobuki_fleet_msgs::SubTaskVector_<ContainerAllocator> >
{
  static const char* value()
  {
    return "SubTask[] subtasks\n\
\n\
================================================================================\n\
MSG: kobuki_fleet_msgs/SubTask\n\
string subTasktType\n\
string serviceArea\n\
uint16 poseOrientation\n\
float32 serviceAreaHigh\n\
geometry_msgs/Pose poseNew\n\
geometry_msgs/Point pose\n\
duration waitingTime\n\
string objectType\n\
uint16 objectId\n\
uint16 object2\n\
uint16 object3\n\
uint16 containerId\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of postion and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::kobuki_fleet_msgs::SubTaskVector_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kobuki_fleet_msgs::SubTaskVector_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.subtasks);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct SubTaskVector_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kobuki_fleet_msgs::SubTaskVector_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kobuki_fleet_msgs::SubTaskVector_<ContainerAllocator>& v)
  {
    s << indent << "subtasks[]" << std::endl;
    for (size_t i = 0; i < v.subtasks.size(); ++i)
    {
      s << indent << "  subtasks[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::kobuki_fleet_msgs::SubTask_<ContainerAllocator> >::stream(s, indent + "    ", v.subtasks[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // KOBUKI_FLEET_MSGS_MESSAGE_SUBTASKVECTOR_H