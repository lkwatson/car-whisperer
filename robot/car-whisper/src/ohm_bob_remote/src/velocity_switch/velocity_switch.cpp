/*
 * velocity_switch.cpp
 *
 *  Created on: Mar 30, 2015
 *      Author: phil
 */

#include <ros/ros.h>

#include "VelocitySwitch.h"

int main(int argc, char** argv)
{
  ros::init(argc, argv, "velocity_switch");
  bobbyrob::VelocitySwitch velSwitch;
  velSwitch.start();
}


