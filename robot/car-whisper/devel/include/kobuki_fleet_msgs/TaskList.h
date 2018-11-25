// Generated by gencpp from file kobuki_fleet_msgs/TaskList.msg
// DO NOT EDIT!


#ifndef KOBUKI_FLEET_MSGS_MESSAGE_TASKLIST_H
#define KOBUKI_FLEET_MSGS_MESSAGE_TASKLIST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <kobuki_fleet_msgs/Task.h>

namespace kobuki_fleet_msgs
{
template <class ContainerAllocator>
struct TaskList_
{
  typedef TaskList_<ContainerAllocator> Type;

  TaskList_()
    : header()
    , tasks()  {
    }
  TaskList_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , tasks(_alloc)  {
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::kobuki_fleet_msgs::Task_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::kobuki_fleet_msgs::Task_<ContainerAllocator> >::other >  _tasks_type;
  _tasks_type tasks;




  typedef boost::shared_ptr< ::kobuki_fleet_msgs::TaskList_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kobuki_fleet_msgs::TaskList_<ContainerAllocator> const> ConstPtr;

}; // struct TaskList_

typedef ::kobuki_fleet_msgs::TaskList_<std::allocator<void> > TaskList;

typedef boost::shared_ptr< ::kobuki_fleet_msgs::TaskList > TaskListPtr;
typedef boost::shared_ptr< ::kobuki_fleet_msgs::TaskList const> TaskListConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kobuki_fleet_msgs::TaskList_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kobuki_fleet_msgs::TaskList_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace kobuki_fleet_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'kobuki_fleet_msgs': ['/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg', '/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::kobuki_fleet_msgs::TaskList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kobuki_fleet_msgs::TaskList_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kobuki_fleet_msgs::TaskList_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kobuki_fleet_msgs::TaskList_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kobuki_fleet_msgs::TaskList_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kobuki_fleet_msgs::TaskList_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kobuki_fleet_msgs::TaskList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "75349dde316a6d0dae7d4082ce8df881";
  }

  static const char* value(const ::kobuki_fleet_msgs::TaskList_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x75349dde316a6d0dULL;
  static const uint64_t static_value2 = 0xae7d4082ce8df881ULL;
};

template<class ContainerAllocator>
struct DataType< ::kobuki_fleet_msgs::TaskList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kobuki_fleet_msgs/TaskList";
  }

  static const char* value(const ::kobuki_fleet_msgs::TaskList_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kobuki_fleet_msgs::TaskList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
kobuki_fleet_msgs/Task[] tasks\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: kobuki_fleet_msgs/Task\n\
Header header\n\
string machineName\n\
string robotName\n\
string robotPrimary\n\
string robotSecondary\n\
string destinationName\n\
\n\
string srcName\n\
geometry_msgs/Pose robotPose\n\
geometry_msgs/Pose machinePose\n\
geometry_msgs/Pose srcPose\n\
geometry_msgs/Pose destinationPose\n\
\n\
uint16 OPEN=0\n\
uint16 WORKING=1\n\
uint16 FINISHED=2\n\
uint16 ERROR=3\n\
uint16 CANCELLED=4\n\
uint16 ROBOTFINISHED=5\n\
uint16 IDLE=6\n\
uint16 taskStatus\n\
\n\
uint16 REPLENISHMENT=1\n\
uint16 DELIVERY=2\n\
uint16 GOTO=3\n\
uint16 CALL=4\n\
uint16 taskType\n\
\n\
uint16 typeA=1\n\
uint16 typeB=2\n\
uint16 taskMaterialType\n\
\n\
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

  static const char* value(const ::kobuki_fleet_msgs::TaskList_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kobuki_fleet_msgs::TaskList_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.tasks);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct TaskList_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kobuki_fleet_msgs::TaskList_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kobuki_fleet_msgs::TaskList_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "tasks[]" << std::endl;
    for (size_t i = 0; i < v.tasks.size(); ++i)
    {
      s << indent << "  tasks[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::kobuki_fleet_msgs::Task_<ContainerAllocator> >::stream(s, indent + "    ", v.tasks[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // KOBUKI_FLEET_MSGS_MESSAGE_TASKLIST_H
