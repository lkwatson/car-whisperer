// Generated by gencpp from file kobuki_fleet_msgs/getAllInventoryDataResponse.msg
// DO NOT EDIT!


#ifndef KOBUKI_FLEET_MSGS_MESSAGE_GETALLINVENTORYDATARESPONSE_H
#define KOBUKI_FLEET_MSGS_MESSAGE_GETALLINVENTORYDATARESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <kobuki_fleet_msgs/LocationIdentifier.h>
#include <std_msgs/Bool.h>

namespace kobuki_fleet_msgs
{
template <class ContainerAllocator>
struct getAllInventoryDataResponse_
{
  typedef getAllInventoryDataResponse_<ContainerAllocator> Type;

  getAllInventoryDataResponse_()
    : locations()
    , finished()  {
    }
  getAllInventoryDataResponse_(const ContainerAllocator& _alloc)
    : locations(_alloc)
    , finished(_alloc)  {
    }



   typedef std::vector< ::kobuki_fleet_msgs::LocationIdentifier_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::kobuki_fleet_msgs::LocationIdentifier_<ContainerAllocator> >::other >  _locations_type;
  _locations_type locations;

   typedef  ::std_msgs::Bool_<ContainerAllocator>  _finished_type;
  _finished_type finished;




  typedef boost::shared_ptr< ::kobuki_fleet_msgs::getAllInventoryDataResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kobuki_fleet_msgs::getAllInventoryDataResponse_<ContainerAllocator> const> ConstPtr;

}; // struct getAllInventoryDataResponse_

typedef ::kobuki_fleet_msgs::getAllInventoryDataResponse_<std::allocator<void> > getAllInventoryDataResponse;

typedef boost::shared_ptr< ::kobuki_fleet_msgs::getAllInventoryDataResponse > getAllInventoryDataResponsePtr;
typedef boost::shared_ptr< ::kobuki_fleet_msgs::getAllInventoryDataResponse const> getAllInventoryDataResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kobuki_fleet_msgs::getAllInventoryDataResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kobuki_fleet_msgs::getAllInventoryDataResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::kobuki_fleet_msgs::getAllInventoryDataResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kobuki_fleet_msgs::getAllInventoryDataResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kobuki_fleet_msgs::getAllInventoryDataResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kobuki_fleet_msgs::getAllInventoryDataResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kobuki_fleet_msgs::getAllInventoryDataResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kobuki_fleet_msgs::getAllInventoryDataResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kobuki_fleet_msgs::getAllInventoryDataResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1638b4ed519c51a59ec936b308f3253e";
  }

  static const char* value(const ::kobuki_fleet_msgs::getAllInventoryDataResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1638b4ed519c51a5ULL;
  static const uint64_t static_value2 = 0x9ec936b308f3253eULL;
};

template<class ContainerAllocator>
struct DataType< ::kobuki_fleet_msgs::getAllInventoryDataResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kobuki_fleet_msgs/getAllInventoryDataResponse";
  }

  static const char* value(const ::kobuki_fleet_msgs::getAllInventoryDataResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kobuki_fleet_msgs::getAllInventoryDataResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kobuki_fleet_msgs/LocationIdentifier[] locations\n\
std_msgs/Bool finished\n\
\n\
================================================================================\n\
MSG: kobuki_fleet_msgs/LocationIdentifier\n\
# Location types\n\
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
\n\
================================================================================\n\
MSG: std_msgs/Bool\n\
bool data\n\
";
  }

  static const char* value(const ::kobuki_fleet_msgs::getAllInventoryDataResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kobuki_fleet_msgs::getAllInventoryDataResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.locations);
      stream.next(m.finished);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct getAllInventoryDataResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kobuki_fleet_msgs::getAllInventoryDataResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kobuki_fleet_msgs::getAllInventoryDataResponse_<ContainerAllocator>& v)
  {
    s << indent << "locations[]" << std::endl;
    for (size_t i = 0; i < v.locations.size(); ++i)
    {
      s << indent << "  locations[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::kobuki_fleet_msgs::LocationIdentifier_<ContainerAllocator> >::stream(s, indent + "    ", v.locations[i]);
    }
    s << indent << "finished: ";
    s << std::endl;
    Printer< ::std_msgs::Bool_<ContainerAllocator> >::stream(s, indent + "  ", v.finished);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KOBUKI_FLEET_MSGS_MESSAGE_GETALLINVENTORYDATARESPONSE_H