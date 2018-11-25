/*
 * lift_buttons.cpp
 *
 *  Created on: 09.10.2015
 *      Author: brob
 */

#include <lift_buttons.h>

Lift_buttons::Lift_buttons() : _nh(), _prvNh("~"), _loop_rate(20)
{
  std::string liftTopic;

  _prvNh.param<std::string>("lift_topic", liftTopic, "lift/buttons");

  _liftPub = _nh.advertise<ats_msgs::Lift>(liftTopic, 1);

  _liftUpButton   = new CeboLcButton(GREEN);
  _liftDownButton = new CeboLcButton(YELLOW);

  _liftUp   = false;
  _liftDown = false;
}


void Lift_buttons::run(void)
{
    while(ros::ok())
    {
        checkLiftButtons();
        _loop_rate.sleep();
        ros::spinOnce();
    }
}


void Lift_buttons::checkLiftButtons() {

  static ros::Time buttonTimer;
  ats_msgs::Lift lift;

  _liftUp   = _liftUpButton->isPressed();
  _liftDown = _liftDownButton->isPressed();

  if (_liftUp && _liftDown)
  {
      // send STOP command if both buttons are pressed
      lift.command = lift.STOP;
  }
  else
  {
      if (_liftUp)
      {
          lift.command = lift.UP;
      }
      else if (_liftDown)
      {
          lift.command = lift.DOWN;
      }
      else // no button pressed
      {
          lift.STOP;
      }
  }

  _liftPub.publish(lift);
}


int main(int argc, char** argv)
{
  ros::init(argc, argv, "lift_buttons");
  Lift_buttons liftButtons;
  liftButtons.start();
}
