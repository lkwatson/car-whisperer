// Generated by gencpp from file kobuki_fleet_msgs/LocationIdentifier.msg
// DO NOT EDIT!


#ifndef KOBUKI_FLEET_MSGS_MESSAGE_LOCATIONIDENTIFIER_H
#define KOBUKI_FLEET_MSGS_MESSAGE_LOCATIONIDENTIFIER_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/UInt64.h>
#include <std_msgs/UInt64.h>
#include <std_msgs/String.h>
#include <std_msgs/Int16.h>
#include <std_msgs/String.h>
#include <geometry_msgs/Pose.h>

namespace kobuki_fleet_msgs
{
template <class ContainerAllocator>
struct LocationIdentifier_
{
  typedef LocationIdentifier_<ContainerAllocator> Type;

  LocationIdentifier_()
    : type()
    , instance_id()
    , locationDescription()
    , materialType()
    , materialDescription()
    , pose()  {
    }
  LocationIdentifier_(const ContainerAllocator& _alloc)
    : type(_alloc)
    , instance_id(_alloc)
    , locationDescription(_alloc)
    , materialType(_alloc)
    , materialDescription(_alloc)
    , pose(_alloc)  {
    }



   typedef  ::std_msgs::UInt64_<ContainerAllocator>  _type_type;
  _type_type type;

   typedef  ::std_msgs::UInt64_<ContainerAllocator>  _instance_id_type;
  _instance_id_type instance_id;

   typedef  ::std_msgs::String_<ContainerAllocator>  _locationDescription_type;
  _locationDescription_type locationDescription;

   typedef  ::std_msgs::Int16_<ContainerAllocator>  _materialType_type;
  _materialType_type materialType;

   typedef  ::std_msgs::String_<ContainerAllocator>  _materialDescription_type;
  _materialDescription_type materialDescription;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;


    enum { SC = 1u };
     enum { MA = 2u };
     enum { CB = 3u };
     enum { WP = 4u };
     enum { PP = 5u };
     enum { ROBOT = 6u };
     enum { A = 1u };
     enum { B = 2u };
 

  typedef boost::shared_ptr< ::kobuki_fleet_msgs::LocationIdentifier_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kobuki_fleet_msgs::LocationIdentifier_<ContainerAllocator> const> ConstPtr;

}; // struct LocationIdentifier_

typedef ::kobuki_fleet_msgs::LocationIdentifier_<std::allocator<void> > LocationIdentifier;

typedef boost::shared_ptr< ::kobuki_fleet_msgs::LocationIdentifier > LocationIdentifierPtr;
typedef boost::shared_ptr< ::kobuki_fleet_msgs::LocationIdentifier const> LocationIdentifierConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kobuki_fleet_msgs::LocationIdentifier_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kobuki_fleet_msgs::LocationIdentifier_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::kobuki_fleet_msgs::LocationIdentifier_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kobuki_fleet_msgs::LocationIdentifier_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kobuki_fleet_msgs::LocationIdentifier_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kobuki_fleet_msgs::LocationIdentifier_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kobuki_fleet_msgs::LocationIdentifier_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kobuki_fleet_msgs::LocationIdentifier_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kobuki_fleet_msgs::LocationIdentifier_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a06bbdeb31528346ad4d8dbf64743457";
  }

  static const char* value(const ::kobuki_fleet_msgs::LocationIdentifier_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa06bbdeb31528346ULL;
  static const uint64_t static_value2 = 0xad4d8dbf64743457ULL;
};

template<class ContainerAllocator>
struct DataType< ::kobuki_fleet_msgs::LocationIdentifier_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kobuki_fleet_msgs/LocationIdentifier";
  }

  static const char* value(const ::kobuki_fleet_msgs::LocationIdentifier_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kobuki_fleet_msgs::LocationIdentifier_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Location types\n\
uint8    SC    = 1  # Source\n\
uint8    MA    = 2  # Machine\n\
uint8    CB    = 3  # Conveyor belt\n\
uint8    WP    = 4  # Way Point (additional navigation goal)\n\
uint8    PP    = 5  # Precision Placement platform\n\
uint8    ROBOT = 6\n\
\n\
# The type of location\n\
std_msgs/UInt64 type\n\
\n\
# The instance ID of the location (e.g. if there are several shelves)\n\
std_msgs/UInt64  instance_id\n\
\n\
# A human-readable description of the location\n\
std_msgs/String  locationDescription\n\
\n\
uint8    A    = 1  # Material type A\n\
uint8    B    = 2  # Material type B\n\
\n\
# A human-readable description of the material type contained in the localization\n\
std_msgs/Int16  materialType\n\
\n\
# A human-readable description of the material type contained in the localization\n\
std_msgs/String  materialDescription\n\
\n\
# Pose with position and orientation\n\
geometry_msgs/Pose pose\n\
\n\
================================================================================\n\
MSG: std_msgs/UInt64\n\
uint64 data\n\
================================================================================\n\
MSG: std_msgs/String\n\
string data\n\
\n\
================================================================================\n\
MSG: std_msgs/Int16\n\
int16 data\n\
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

  static const char* value(const ::kobuki_fleet_msgs::LocationIdentifier_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kobuki_fleet_msgs::LocationIdentifier_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.type);
      stream.next(m.instance_id);
      stream.next(m.locationDescription);
      stream.next(m.materialType);
      stream.next(m.materialDescription);
      stream.next(m.pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct LocationIdentifier_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kobuki_fleet_msgs::LocationIdentifier_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kobuki_fleet_msgs::LocationIdentifier_<ContainerAllocator>& v)
  {
    s << indent << "type: ";
    s << std::endl;
    Printer< ::std_msgs::UInt64_<ContainerAllocator> >::stream(s, indent + "  ", v.type);
    s << indent << "instance_id: ";
    s << std::endl;
    Printer< ::std_msgs::UInt64_<ContainerAllocator> >::stream(s, indent + "  ", v.instance_id);
    s << indent << "locationDescription: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.locationDescription);
    s << indent << "materialType: ";
    s << std::endl;
    Printer< ::std_msgs::Int16_<ContainerAllocator> >::stream(s, indent + "  ", v.materialType);
    s << indent << "materialDescription: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.materialDescription);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KOBUKI_FLEET_MSGS_MESSAGE_LOCATIONIDENTIFIER_H