/*
 * VelocitySwitch.cpp
 *
 *  Created on: Mar 30, 2015
 *      Author: phil
 */

#include "VelocitySwitch.h"
#include "Ps3_sixad_enums.h"

#include <cmath>
#include <string>

namespace bobbyrob
{

VelocitySwitch::VelocitySwitch():
                _autonomous(true)
{
  ros::NodeHandle prvNh("~");
  std::string topicVelAutonomous;
  std::string topicVelRemote;
  std::string topicVelOut;
  std::string topicAutonomousOut;
  std::string topicLiftAutonomous;
  std::string topicLiftRemote;
  std::string topicLiftButtons;
  std::string topicLiftOut;
  std::string topicJoy;
  std::string topicAutonomousReset;
  prvNh.param<std::string>("topic_velocity_autonomous", topicVelAutonomous, "vel/autonomous");
  prvNh.param<std::string>("topic_velocity_teleop", topicVelRemote, "vel/teleop");
  prvNh.param<std::string>("topic_lift_autonomous", topicLiftAutonomous, "lift/autonomous");
  prvNh.param<std::string>("topic_lift_teleop", topicLiftRemote, "lift/teleop");
  prvNh.param<std::string>("topic_lift_buttons", topicLiftButtons, "lift/buttons");
  prvNh.param<std::string>("topic_joy", topicJoy, "joy");
  prvNh.param<std::string>("topic_autonomous_reset", topicAutonomousReset, "autonomous_reset");
  prvNh.param<std::string>("topic_vel_out", topicVelOut, "vel/cmd");
  prvNh.param<std::string>("topic_lift_out", topicLiftOut, "lift/cmd");
  prvNh.param<std::string>("topic_autonomous_out", topicAutonomousOut, "autonomous_mode");
  prvNh.param<double>("thresh_axis_moved", _threshAxisMoved, 0.1);
  prvNh.param<double>("sleep_time_buttonToRemote", _sleepTimeButtonToRemote, 2.0);

  _subsVelAutonomous = _nh.subscribe(topicVelAutonomous, 1, &VelocitySwitch::callBackVelAutonomous, this);
  _subsVelRemote = _nh.subscribe(topicVelRemote, 1, &VelocitySwitch::callBackVelRemote, this);
  _subsLiftAutonomous = _nh.subscribe(topicLiftAutonomous, 1, &VelocitySwitch::callBackLiftAutonomous, this);
  _subsLiftRemote = _nh.subscribe(topicLiftRemote, 1, &VelocitySwitch::callBackLiftRemote, this);
  _subsLiftButtons = _nh.subscribe(topicLiftButtons, 1, &VelocitySwitch::callBackLiftButtons, this);
  _subsJoy = _nh.subscribe(topicJoy, 1, &VelocitySwitch::callBackJoy, this);
  _pubVelOut = _nh.advertise<geometry_msgs::Twist>(topicVelOut, 1);
  _pubLiftOut = _nh.advertise<ats_msgs::Lift>(topicLiftOut, 1);
  _pubAutonomousOut = _nh.advertise<std_msgs::Bool>(topicAutonomousOut, 1);
  _serviceResetAutonomous = _nh.advertiseService(topicAutonomousReset, &VelocitySwitch::callBackAutonomousReset, this);

  resetTimerLiftButtons = ros::Time::now();
}

VelocitySwitch::~VelocitySwitch()
{

}

void VelocitySwitch::callBackVelAutonomous(const geometry_msgs::Twist& twist)
{
  if(!_autonomous)
    return;
  _pubVelOut.publish(twist);
}

void VelocitySwitch::callBackVelRemote(const geometry_msgs::Twist& twist)
{
  if(_autonomous)
	return;
  _pubVelOut.publish(twist);
}

void VelocitySwitch::callBackLiftAutonomous(const ats_msgs::Lift& lift)
{
  if(!_autonomous)
    return;
  _pubLiftOut.publish(lift);
}

void VelocitySwitch::callBackLiftRemote(const ats_msgs::Lift& lift)
{
  if(_autonomous)
    return;
  if ((ros::Time::now() - resetTimerLiftButtons).toSec() > _sleepTimeButtonToRemote)
  _pubLiftOut.publish(lift);
}

void VelocitySwitch::callBackLiftButtons(const ats_msgs::Lift& lift)
{
  if (lift.command == lift.STOP)
  {
      if (_autonomous)
        return;

      // STOP command usually means no button is pressed, after two seconds of STOP ignore buttons
      // to allow for autonomous commands and teleop

      // publish for "_sleepTimeButtonToRemote" more seconds before allowing teleop
      if ((ros::Time::now() - resetTimerLiftButtons).toSec()  < _sleepTimeButtonToRemote) // TODO: change 2 to parameter
          _pubLiftOut.publish(lift);
  }
  else
  {
      // end autonomous mode
      if (_autonomous)
      {
          _autonomous = false;
          std_msgs::Bool autoMsg;
          autoMsg.data = false;
          _pubAutonomousOut.publish(autoMsg);
          ROS_INFO_STREAM("Turned off autonomous mode because LIFT button was pressed.");
      }
      resetTimerLiftButtons = ros::Time::now();

      _pubLiftOut.publish(lift);
  }

}

bool VelocitySwitch::callBackAutonomousReset(std_srvs::Empty::Request& req, std_srvs::Empty::Response& res)
{
  if(_autonomous)
  {
    return false;
  }

  _autonomous = true;
  std_msgs::Bool autoMsg;
  autoMsg.data = true;
  _pubAutonomousOut.publish(autoMsg);
  ROS_INFO_STREAM("RC: Switched back to autonomous mode");
  return _autonomous;
}

void VelocitySwitch::callBackJoy(const sensor_msgs::Joy& joy)
{
  if(!_autonomous)
    return;
  static sensor_msgs::Joy lastJoyMsg;
  static bool initialized = false;
  bool moved = false;
  if(!initialized)
  {
    initialized = true;
    lastJoyMsg = joy;
    return;
  }
  //axes to check: Flight sticks L2, R2
  if(std::abs(static_cast<double>(joy.axes[A1_Y] - lastJoyMsg.axes[A1_Y])) > _threshAxisMoved)
  {
    std::cout << __PRETTY_FUNCTION__<< " axes " << A1_Y << "moved" << std::endl;
    _autonomous = false;
    moved = true;
  }
  if(std::abs(static_cast<double>(joy.axes[A1_X] - lastJoyMsg.axes[A1_X])) > _threshAxisMoved)
  {
    std::cout << __PRETTY_FUNCTION__<< " axes " << A1_X << "moved" << std::endl;
    _autonomous = false;
    moved = true;
  }
  if(std::abs(static_cast<double>(joy.axes[A2_Y] - lastJoyMsg.axes[A2_Y])) > _threshAxisMoved)
  {
    std::cout << __PRETTY_FUNCTION__<< " axes " << A2_Y << "moved" << std::endl;
    _autonomous = false;
    moved = true;
  }
  if(std::abs(static_cast<double>(joy.axes[A2_X] - lastJoyMsg.axes[A2_X])) > _threshAxisMoved)
  {
    std::cout << __PRETTY_FUNCTION__<< " axes " << A2_X << "moved" << std::endl;
    _autonomous = false;
    moved = true;
  }
  if(std::abs(static_cast<double>(joy.axes[R2] - lastJoyMsg.axes[R2])) > _threshAxisMoved)
  {
    std::cout << __PRETTY_FUNCTION__<< " axes " << R2 << "moved" << std::endl;
    _autonomous = false;
    moved = true;
  }
  if(std::abs(static_cast<double>(joy.axes[L2] - lastJoyMsg.axes[L2])) > _threshAxisMoved)
  {
    std::cout << __PRETTY_FUNCTION__<< " axes " << L2 << "moved" << std::endl;
    _autonomous = false;
    moved = true;
  }
  //if(*(joy.buttons.data()) & *(lastJoyMsg.buttons.data()))
//  if(joy.buttons != lastJoyMsg.buttons)
//  {
//    std::cout << __PRETTY_FUNCTION__ << " button pressed" << std::endl;
//    _autonomous = false;
//    moved = true;
//  }
  if(moved)
  {
    std_msgs::Bool autoMsg;
    autoMsg.data = false;
    _pubAutonomousOut.publish(autoMsg);
    ROS_INFO_STREAM("RM: Axes / Buttons changed: Switched to remote controlled mode" << std::endl);
  }
}


} /* namespace bobbyrob */
