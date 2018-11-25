/*
 * Ps3_sixad_enums.h
 *
 *  Created on: 07.08.2015
 *      Author: user
 */

#ifndef ROS_SRC_OHM_BOB_REMOTE_SRC_REMOTE_CONTROL_PS3_SIXAD_ENUMS_H_
#define ROS_SRC_OHM_BOB_REMOTE_SRC_REMOTE_CONTROL_PS3_SIXAD_ENUMS_H_

/* The axis and buttons are from a PS3 controller. */
enum Axis_ps3_sixad
 {
   A1_Y = 0,             //!< y axis of left analog stick
   A1_X,             //!< x axis of left analog stick
   A2_Y,             //!< y axis of right analog stick
   A2_X,             //!< x axis of right analog stick
   SIXXAXIS_Y,		 //Accelerometer
   SIXXAXIS_X,		 //Accelerometer
   SIXXAXIS_Z,		 //Accelerometer
   nc,
   CROSS_UP,         //!< command cross up
   CROSS_R,          //!< command cross right
   CROSS_D,          //!< command cross down
   CROSS_L,          //!< command cross left
   L2,               //!< L2
   R2,            	 //!< R2
   L1,               //!< L1
   R1,               //!< R1
   AB_T,             //!< triangle button
   AB_C,             //!< circle button
   AB_X,             //!< cross button
   AB_S,             //!< square botton
 };

 /**
  *  @enum Buttons_ps3
  *  Buttons of the ps3 controller
  */
 enum Buttons_ps3_sixad
 {
   B_SELECT = 0,         //!< SELECT
   B_A1,             //!< A1
   B_A2,             //!< A2
   B_START,          //!< START
   B_UP,             //!< UP
   B_RIGHT,          //!< RIGHT
   B_DOWN,           //!< DOWN
   B_LEFT,           //!< LEFT
   B_L2,             //!< L2
   B_R2,             //!< R2
   B_L1,             //!< L1
   B_R1,             //!< R1
   B_T,              //!< triangle button
   B_C,              //!< circle button
   B_X,              //!< cross button
   B_S,              //!< square button
   B_PS				 //!< PS button
 };




#endif /* ROS_SRC_OHM_BOB_REMOTE_SRC_REMOTE_CONTROL_PS3_SIXAD_ENUMS_H_ */
