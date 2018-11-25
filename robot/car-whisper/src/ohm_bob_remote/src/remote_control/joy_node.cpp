/*
 * joy_node.cpp
 *
 *  Created on: 21.04.2015
 *      Author: amndan
 */


#include <joy_node.h>
#include <std_srvs/Empty.h>
#include "Ps3_sixad_enums.h"

Joy_node::Joy_node()
{
  ros::NodeHandle prvNh("~");
  std::string joyTopic;
  std::string velTopic;
  std::string liftTopic;
  std::string odomTopic;
  std::string controller_type;
  std::string autoTopic;
  std::string topicAutonomousReset;
  std::string topicPushTaskVetor;


  prvNh.param<std::string>("joy_topic", joyTopic, "joy");
  prvNh.param<std::string>("lift_topic", liftTopic, "lift/cmd");
  prvNh.param<std::string>("vel_topic", velTopic, "vel/cmd");
  prvNh.param<std::string>("odom_topic", odomTopic, "/wheelodom");
  prvNh.param<std::string>("controller_type", controller_type, "ps3_sixad");
  prvNh.param<std::string>("topic_autonomous_mode", autoTopic, "autonomous_mode");
  prvNh.param<std::string>("topic_autonomous_reset", topicAutonomousReset, "autonomous_reset");
  prvNh.param<std::string>("push_task_topic", topicPushTaskVetor, "/hive_node/push_task_vector");
  prvNh.param<double>("lin_vel_thresh", _linVelThresh, 1.0);
  prvNh.param<double>("ang_vel_thresh", _angVelThresh, 1.0);
  prvNh.param<double>("time_tresh_autonomous_reset", _timeThreshAutonomousReset, 2.0);
  prvNh.param<double>("fac_sticky_axis", _facStickyAxis, 0.0);
  prvNh.param<double>("fac_allow_angular", _facAllowAngular, 0.03);

  _velPub = _nh.advertise<geometry_msgs::Twist>(velTopic, 1);
  _liftPub = _nh.advertise<ats_msgs::Lift>(liftTopic, 1);
  _joySubs = _nh.subscribe(joyTopic, 1, &Joy_node::joyCallBack, this);
  _odomSubs = _nh.subscribe(odomTopic, 1, &Joy_node::odomCallBack, this);
  _autoSubs = _nh.subscribe(autoTopic, 1, &Joy_node::autoCallBack, this);

  if(!ros::service::waitForService(topicAutonomousReset, 2000))
    ROS_INFO_STREAM("RC: AutonomousReset Service not available" << std::endl);
  _clientAutonomousReset = _nh.serviceClient<std_srvs::Empty>(topicAutonomousReset);
  _clientPushTaskVetor = _nh.serviceClient<ats_msgs::PushTaskVector>(topicPushTaskVetor);

  //choose controller type

  if (!controller_type.compare("ps3_sixad")) {
    Controller = new Ps3_sixad();
  }
  else {
    std::cout << controller_type << " is not a valid controller type." << std::endl;
    std::cout << "Use one of the following instead:" << std::endl;
    std::cout << "ps3_ros; ps3_sixad; joy_extreme_3d_pro" << std::endl;
  }

  _Blinker = new CeboLcBlinker();
  _Buzzer  = new CeboLcBuzzer();
  _warnLight = new CeboLcWarnLight();
  _autonomous = false;
  _safetyMode = false;
  _signalHazard = false;
  _movingLinear = false;
  _movingAngular = false;
}

void Joy_node::joyCallBack(const sensor_msgs::Joy::ConstPtr& joy) {

  static ros::Time resetTimer;
  Controller->_linVelThresh = _linVelThresh;
  Controller->_angVelThresh = _angVelThresh;
  remote_cmd cmd = Controller->update(joy);

  geometry_msgs::Twist vel;
  ats_msgs::Lift lift;

  if (cmd.safety_button && !_movingLinear && !_movingAngular)
    _safetyMode = !_safetyMode;

  // calculate velocity commands out of joy commands (limited if safety-mode is on)
  if (_safetyMode)
  {
    if (cmd.linear > _facStickyAxis * _linVelThresh || cmd.linear < _facStickyAxis * _linVelThresh)
    {
       vel.linear.x = std::min(0.3, cmd.linear);
       vel.angular.z = std::max(-_facAllowAngular * _angVelThresh,
               std::min(_facAllowAngular * _angVelThresh, cmd.angular));
    }
    else
    {
       vel.linear.x = 0;
       vel.angular.z = cmd.angular;
    }
  }
  else
  {
      vel.linear.x = cmd.linear;
      vel.angular.z = cmd.angular;
  }

  // give defined default values for unused dimensions
  vel.linear.y = 0.0;
  vel.linear.z = 0.0;
  vel.angular.x = 0.0;
  vel.angular.y = 0.0;

  switch (cmd.lift) {
  case 0:
    lift.command = lift.STOP;
    break;
  case 1:
    if (!_safetyMode || (!_movingLinear && !_movingAngular))
      lift.command = lift.UP;
    break;
  case 2:
    if (!_safetyMode || (!_movingLinear && !_movingAngular))
      lift.command = lift.DOWN;
    break;
  default:
    lift.command = lift.STOP;
    break;
  }

  ats_msgs::PushTaskVector taskVector;
  if (cmd.dockingLeft)
  {
	taskVector.request.tasks.data = "DL";
	_clientPushTaskVetor.call(taskVector);
  }
  else if (cmd.undockingLeft)
  {
	taskVector.request.tasks.data  = "UL";
	_clientPushTaskVetor.call(taskVector);
  }

  //check vel to blink Left and right
  if(vel.angular.z > 0.1){
	  cmd.blinkLeft =true;
  }
  else if(vel.angular.z < -0.001){
	  cmd.blinkRight = true;
  }
  //check vel to buzzer if driving backwards
  if(vel.linear.x < -0.001){
    _Buzzer ->setBackwards(BUZZER_ON);
  }
  	
  // warning signals
  if (!_autonomous)
  {
      if (cmd.signalHazard)
          _signalHazard = !_signalHazard;

      if (!_signalHazard)
      {
          if (cmd.blinkLeft)
              _Blinker->indicateTurn(LEFT, BLINKER_ON);
          else
              _Blinker->indicateTurn(LEFT, BLINKER_OFF);

          if (cmd.blinkRight)
              _Blinker->indicateTurn(RIGHT, BLINKER_ON);
           else
              _Blinker->indicateTurn(RIGHT, BLINKER_OFF);
      }
      else
      {
          _Blinker->hazardWarning(BLINKER_ON);
      }

      // buzzer
      if (cmd.buzz)
         _Buzzer ->set(BUZZER_ON);
      else
          _Buzzer->set(BUZZER_OFF);

	  // warnLight
      if (cmd.warnLight)
                _warnLight->toggle();
   /*   if (cmd.warnLight)
          _warnLight->set(WARNLIGHT_ON);
      else
          _warnLight->set(WARNLIGHT_OFF);*/


  }

  // publish
  _velPub.publish(vel);
  _liftPub.publish(lift);


  //check if the manual mode is presed longer than timeThreshAutonomousReset seconds
  if(!((joy->buttons[B_L1]) && (joy->buttons[B_R1])))
    resetTimer = ros::Time::now();
  else
    if((ros::Time::now() - resetTimer).toSec() > _timeThreshAutonomousReset)
    {
      std_srvs::Empty emptyService;
      if(!_clientAutonomousReset.call(emptyService))
        ROS_INFO_STREAM("RC: AutonomousResetService not available" << std::endl);
      else
        resetTimer = ros::Time::now();
    }
}

void Joy_node::odomCallBack(const nav_msgs::Odometry::ConstPtr& odom)
{
    _movingLinear = std::abs(odom->twist.twist.linear.x) > 0.01;
    _movingAngular = std::abs(odom->twist.twist.angular.z) > 0.01;
}

void Joy_node::autoCallBack(const std_msgs::Bool::ConstPtr& autonomous)
{
    _autonomous = autonomous->data;
}

int main(int argc, char** argv)
{
  ros::init(argc, argv, "joy_node_remotecontrol");
  Joy_node remoteControl;
  remoteControl.start();
}
