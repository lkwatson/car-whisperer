/*
 * lift_buttons.h
 *
 *  Created on: 09.10.2015
 *      Author: brob
 */

#ifndef LIFT_BUTTONS_H_
#define LIFT_BUTTONS_H_

#include <ros/ros.h>
#include <remote_cmd_msgs.h>
#include "ats_msgs/Lift.h"
#include "CeboLcButton.h"


class Lift_buttons {
public:
  Lift_buttons();

  void start(void) { this->run(); }

  ~Lift_buttons() {}

private:
  void run();
  void checkLiftButtons();

  ros::NodeHandle _prvNh;
  ros::NodeHandle _nh;
  ros::Rate       _loop_rate;
  ros::Publisher  _liftPub;
  CeboLcButton*   _liftUpButton;
  CeboLcButton*   _liftDownButton;

  bool _liftUp, _liftDown;

};

#endif /* LIFT_BUTTONS_H_ */
