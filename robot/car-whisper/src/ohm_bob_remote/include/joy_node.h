/*
 * joy_node.h
 *
 *  Created on: 21.04.2015
 *      Author: amndan
 */

#ifndef JOY_NODE_H_
#define JOY_NODE_H_

#include <ros/ros.h>
#include <sensor_msgs/Joy.h>
#include <nav_msgs/Odometry.h>
#include <geometry_msgs/Twist.h>
#include <remote_cmd_msgs.h>
#include <CeboLcBlinker.h>
#include <CeboLcBuzzer.h>
#include <CeboLcWarnLight.h>
#include "ats_msgs/Lift.h"
#include "ats_msgs/PushTaskVector.h"

#include <Ps3_sixad.h>

class Joy_node {
public:
  Joy_node();

  void start(void){this->run();}

  ~Joy_node(){}

private:
  void run(void){ros::spin();}
  void joyCallBack(const sensor_msgs::Joy::ConstPtr& joy);
  void odomCallBack(const nav_msgs::Odometry::ConstPtr& odom);
  void autoCallBack(const std_msgs::Bool::ConstPtr& autonomous);

  Remote* Controller; 	// Member for abstract remote class
  ros::NodeHandle _nh;
  ros::Publisher  _velPub;
  ros::Publisher  _liftPub;
  ros::Subscriber _joySubs;
  ros::Subscriber _odomSubs;
  ros::Subscriber _autoSubs;
  ros::ServiceClient _clientAutonomousReset;
  ros::ServiceClient _clientPushTaskVetor;
  CeboLcBlinker* _Blinker;
  CeboLcBuzzer* _Buzzer;
  CeboLcWarnLight* _warnLight;

  bool _safetyMode;
  bool _signalHazard;
  bool _movingLinear;
  bool _movingAngular;
  bool _autonomous;
  double _linVelThresh;
  double _angVelThresh;
  double _timeThreshAutonomousReset;
  double _facStickyAxis;
  double _facAllowAngular;
  double _sleepTimeWarnLight; // Time pushing "selectButton" to activate WarnLight
  ros::Time _resetTimerWarnLight;
};

#endif /* JOY_NODE_H_ */
