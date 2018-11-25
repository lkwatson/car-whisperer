/*
 * VelocitySwitchNode.h
 *
 *  Created on: Mar 30, 2015
 *      Author: phil
 */

#ifndef ROS_SRC_OHM_BOB_REMOTE_SRC_VELOCITY_SWITCH_VELOCITYSWITCH_H_
#define ROS_SRC_OHM_BOB_REMOTE_SRC_VELOCITY_SWITCH_VELOCITYSWITCH_H_

#include <ros/ros.h>
#include <geometry_msgs/TwistStamped.h>
#include <geometry_msgs/Twist.h>
#include <std_srvs/Empty.h>
#include <sensor_msgs/Joy.h>
#include <ats_msgs/Lift.h>
#include <std_msgs/Bool.h>

namespace bobbyrob
{

class VelocitySwitch
{
public:
  VelocitySwitch();
  virtual ~VelocitySwitch();
  void start(void){this->run();}
private:
  void callBackVelAutonomous(const geometry_msgs::Twist& twist);
  void callBackVelRemote(const geometry_msgs::Twist& twist);
  void callBackLiftAutonomous(const ats_msgs::Lift& lift);
  void callBackLiftRemote(const ats_msgs::Lift& lift);
  void callBackLiftButtons(const ats_msgs::Lift& lift);
  bool callBackAutonomousReset(std_srvs::Empty::Request& req, std_srvs::Empty::Response& res);
  void callBackJoy(const sensor_msgs::Joy& joy);
  void run(void){ros::spin();}
  ros::NodeHandle _nh;
  ros::Subscriber _subsVelAutonomous;
  ros::Subscriber _subsVelRemote;
  ros::Subscriber _subsLiftAutonomous;
  ros::Subscriber _subsLiftRemote;
  ros::Subscriber _subsLiftButtons;
  ros::Subscriber _subsJoy;
  ros::Publisher  _pubVelOut;
  ros::Publisher  _pubLiftOut;
  ros::Publisher  _pubAutonomousOut;
  ros::ServiceServer _serviceResetAutonomous;
  bool _autonomous;
  double _threshAxisMoved;
  double _sleepTimeButtonToRemote;
  ros::Time resetTimerLiftButtons;

};

} /* namespace bobbyrob */

#endif /* ROS_SRC_OHM_BOB_REMOTE_SRC_VELOCITY_SWITCH_VELOCITYSWITCH_H_ */
