/*
 * remote_cmd_msgs.h
 *
 *  Created on: 21.04.2015
 *      Author: amndan
 */

#ifndef REMOTE_CMD_MSGS_H_
#define REMOTE_CMD_MSGS_H_

#define Lift_STOP 0
#define Lift_UP 1
#define Lift_DOWN 2


#define PS3_ROS 0
#define PS3_SIXAD 1
#define WII 2
#define JOY_EXTREME_3D_PRO 3
#define KEY 4


struct remote_cmd {
  double linear;
  double angular;
  int lift;
  bool safety_button;
  bool blinkLeft;
  bool blinkRight;
  bool signalHazard;
  bool buzz;
  bool warnLight;
  bool dockingLeft;
  bool undockingLeft;
} ;

#endif /* REMOTE_CMD_MSGS_H_ */
