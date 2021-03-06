// Generated by gencpp from file kobuki_fleet_msgs/AssignTask.msg
// DO NOT EDIT!


#ifndef KOBUKI_FLEET_MSGS_MESSAGE_ASSIGNTASK_H
#define KOBUKI_FLEET_MSGS_MESSAGE_ASSIGNTASK_H

#include <ros/service_traits.h>


#include <kobuki_fleet_msgs/AssignTaskRequest.h>
#include <kobuki_fleet_msgs/AssignTaskResponse.h>


namespace kobuki_fleet_msgs
{

struct AssignTask
{

typedef AssignTaskRequest Request;
typedef AssignTaskResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AssignTask
} // namespace kobuki_fleet_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::kobuki_fleet_msgs::AssignTask > {
  static const char* value()
  {
    return "b2e00537ad9afaf702715f57966af958";
  }

  static const char* value(const ::kobuki_fleet_msgs::AssignTask&) { return value(); }
};

template<>
struct DataType< ::kobuki_fleet_msgs::AssignTask > {
  static const char* value()
  {
    return "kobuki_fleet_msgs/AssignTask";
  }

  static const char* value(const ::kobuki_fleet_msgs::AssignTask&) { return value(); }
};


// service_traits::MD5Sum< ::kobuki_fleet_msgs::AssignTaskRequest> should match 
// service_traits::MD5Sum< ::kobuki_fleet_msgs::AssignTask > 
template<>
struct MD5Sum< ::kobuki_fleet_msgs::AssignTaskRequest>
{
  static const char* value()
  {
    return MD5Sum< ::kobuki_fleet_msgs::AssignTask >::value();
  }
  static const char* value(const ::kobuki_fleet_msgs::AssignTaskRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::kobuki_fleet_msgs::AssignTaskRequest> should match 
// service_traits::DataType< ::kobuki_fleet_msgs::AssignTask > 
template<>
struct DataType< ::kobuki_fleet_msgs::AssignTaskRequest>
{
  static const char* value()
  {
    return DataType< ::kobuki_fleet_msgs::AssignTask >::value();
  }
  static const char* value(const ::kobuki_fleet_msgs::AssignTaskRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::kobuki_fleet_msgs::AssignTaskResponse> should match 
// service_traits::MD5Sum< ::kobuki_fleet_msgs::AssignTask > 
template<>
struct MD5Sum< ::kobuki_fleet_msgs::AssignTaskResponse>
{
  static const char* value()
  {
    return MD5Sum< ::kobuki_fleet_msgs::AssignTask >::value();
  }
  static const char* value(const ::kobuki_fleet_msgs::AssignTaskResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::kobuki_fleet_msgs::AssignTaskResponse> should match 
// service_traits::DataType< ::kobuki_fleet_msgs::AssignTask > 
template<>
struct DataType< ::kobuki_fleet_msgs::AssignTaskResponse>
{
  static const char* value()
  {
    return DataType< ::kobuki_fleet_msgs::AssignTask >::value();
  }
  static const char* value(const ::kobuki_fleet_msgs::AssignTaskResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // KOBUKI_FLEET_MSGS_MESSAGE_ASSIGNTASK_H
