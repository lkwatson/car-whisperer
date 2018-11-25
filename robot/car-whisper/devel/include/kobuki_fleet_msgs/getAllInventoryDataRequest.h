// Generated by gencpp from file kobuki_fleet_msgs/getAllInventoryDataRequest.msg
// DO NOT EDIT!


#ifndef KOBUKI_FLEET_MSGS_MESSAGE_GETALLINVENTORYDATAREQUEST_H
#define KOBUKI_FLEET_MSGS_MESSAGE_GETALLINVENTORYDATAREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Bool.h>

namespace kobuki_fleet_msgs
{
template <class ContainerAllocator>
struct getAllInventoryDataRequest_
{
  typedef getAllInventoryDataRequest_<ContainerAllocator> Type;

  getAllInventoryDataRequest_()
    : start()  {
    }
  getAllInventoryDataRequest_(const ContainerAllocator& _alloc)
    : start(_alloc)  {
    }



   typedef  ::std_msgs::Bool_<ContainerAllocator>  _start_type;
  _start_type start;




  typedef boost::shared_ptr< ::kobuki_fleet_msgs::getAllInventoryDataRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kobuki_fleet_msgs::getAllInventoryDataRequest_<ContainerAllocator> const> ConstPtr;

}; // struct getAllInventoryDataRequest_

typedef ::kobuki_fleet_msgs::getAllInventoryDataRequest_<std::allocator<void> > getAllInventoryDataRequest;

typedef boost::shared_ptr< ::kobuki_fleet_msgs::getAllInventoryDataRequest > getAllInventoryDataRequestPtr;
typedef boost::shared_ptr< ::kobuki_fleet_msgs::getAllInventoryDataRequest const> getAllInventoryDataRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kobuki_fleet_msgs::getAllInventoryDataRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kobuki_fleet_msgs::getAllInventoryDataRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace kobuki_fleet_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'kobuki_fleet_msgs': ['/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg', '/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::kobuki_fleet_msgs::getAllInventoryDataRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kobuki_fleet_msgs::getAllInventoryDataRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kobuki_fleet_msgs::getAllInventoryDataRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kobuki_fleet_msgs::getAllInventoryDataRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kobuki_fleet_msgs::getAllInventoryDataRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kobuki_fleet_msgs::getAllInventoryDataRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kobuki_fleet_msgs::getAllInventoryDataRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "00ef7ef8c04feb98bbb45b163f0a38ef";
  }

  static const char* value(const ::kobuki_fleet_msgs::getAllInventoryDataRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x00ef7ef8c04feb98ULL;
  static const uint64_t static_value2 = 0xbbb45b163f0a38efULL;
};

template<class ContainerAllocator>
struct DataType< ::kobuki_fleet_msgs::getAllInventoryDataRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kobuki_fleet_msgs/getAllInventoryDataRequest";
  }

  static const char* value(const ::kobuki_fleet_msgs::getAllInventoryDataRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kobuki_fleet_msgs::getAllInventoryDataRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Bool start\n\
\n\
================================================================================\n\
MSG: std_msgs/Bool\n\
bool data\n\
";
  }

  static const char* value(const ::kobuki_fleet_msgs::getAllInventoryDataRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kobuki_fleet_msgs::getAllInventoryDataRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.start);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct getAllInventoryDataRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kobuki_fleet_msgs::getAllInventoryDataRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kobuki_fleet_msgs::getAllInventoryDataRequest_<ContainerAllocator>& v)
  {
    s << indent << "start: ";
    s << std::endl;
    Printer< ::std_msgs::Bool_<ContainerAllocator> >::stream(s, indent + "  ", v.start);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KOBUKI_FLEET_MSGS_MESSAGE_GETALLINVENTORYDATAREQUEST_H