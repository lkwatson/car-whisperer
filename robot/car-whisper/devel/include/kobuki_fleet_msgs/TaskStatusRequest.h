// Generated by gencpp from file kobuki_fleet_msgs/TaskStatusRequest.msg
// DO NOT EDIT!


#ifndef KOBUKI_FLEET_MSGS_MESSAGE_TASKSTATUSREQUEST_H
#define KOBUKI_FLEET_MSGS_MESSAGE_TASKSTATUSREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace kobuki_fleet_msgs
{
template <class ContainerAllocator>
struct TaskStatusRequest_
{
  typedef TaskStatusRequest_<ContainerAllocator> Type;

  TaskStatusRequest_()
    : machineName()
    , robotName()
    , action(0)
    , taskStatus(0)  {
    }
  TaskStatusRequest_(const ContainerAllocator& _alloc)
    : machineName(_alloc)
    , robotName(_alloc)
    , action(0)
    , taskStatus(0)  {
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _machineName_type;
  _machineName_type machineName;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _robotName_type;
  _robotName_type robotName;

   typedef uint16_t _action_type;
  _action_type action;

   typedef uint16_t _taskStatus_type;
  _taskStatus_type taskStatus;


    enum { GET = 0u };
     enum { SET = 1u };
     enum { OPEN = 0u };
     enum { WORKING = 1u };
     enum { FINISHED = 2u };
     enum { ERROR = 3u };
 

  typedef boost::shared_ptr< ::kobuki_fleet_msgs::TaskStatusRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kobuki_fleet_msgs::TaskStatusRequest_<ContainerAllocator> const> ConstPtr;

}; // struct TaskStatusRequest_

typedef ::kobuki_fleet_msgs::TaskStatusRequest_<std::allocator<void> > TaskStatusRequest;

typedef boost::shared_ptr< ::kobuki_fleet_msgs::TaskStatusRequest > TaskStatusRequestPtr;
typedef boost::shared_ptr< ::kobuki_fleet_msgs::TaskStatusRequest const> TaskStatusRequestConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kobuki_fleet_msgs::TaskStatusRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kobuki_fleet_msgs::TaskStatusRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::kobuki_fleet_msgs::TaskStatusRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kobuki_fleet_msgs::TaskStatusRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kobuki_fleet_msgs::TaskStatusRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kobuki_fleet_msgs::TaskStatusRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kobuki_fleet_msgs::TaskStatusRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kobuki_fleet_msgs::TaskStatusRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kobuki_fleet_msgs::TaskStatusRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cff84352f01ec6b38ea2d647856cf29f";
  }

  static const char* value(const ::kobuki_fleet_msgs::TaskStatusRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcff84352f01ec6b3ULL;
  static const uint64_t static_value2 = 0x8ea2d647856cf29fULL;
};

template<class ContainerAllocator>
struct DataType< ::kobuki_fleet_msgs::TaskStatusRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kobuki_fleet_msgs/TaskStatusRequest";
  }

  static const char* value(const ::kobuki_fleet_msgs::TaskStatusRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kobuki_fleet_msgs::TaskStatusRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string machineName\n\
string robotName\n\
\n\
uint16 GET=0\n\
uint16 SET=1\n\
uint16 action\n\
\n\
uint16 OPEN=0\n\
uint16 WORKING=1\n\
uint16 FINISHED=2\n\
uint16 ERROR=3\n\
uint16 taskStatus\n\
";
  }

  static const char* value(const ::kobuki_fleet_msgs::TaskStatusRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kobuki_fleet_msgs::TaskStatusRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.machineName);
      stream.next(m.robotName);
      stream.next(m.action);
      stream.next(m.taskStatus);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct TaskStatusRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kobuki_fleet_msgs::TaskStatusRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kobuki_fleet_msgs::TaskStatusRequest_<ContainerAllocator>& v)
  {
    s << indent << "machineName: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.machineName);
    s << indent << "robotName: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.robotName);
    s << indent << "action: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.action);
    s << indent << "taskStatus: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.taskStatus);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KOBUKI_FLEET_MSGS_MESSAGE_TASKSTATUSREQUEST_H
