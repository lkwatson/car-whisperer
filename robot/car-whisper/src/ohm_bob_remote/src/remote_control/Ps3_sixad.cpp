/*
 * Ps3_ros.cpp
 *
 *  Created on: 21.04.2015
 *      Author: amndan
 */

#include <Ps3_sixad.h>
#include <Ps3_sixad_enums.h>

Ps3_sixad::Ps3_sixad() {

	_circleLastStatus =false;
	_squareLastStatus=false;
	_triangleLastStatus=false;
	_xLastStatus=false;
	_selectLastStatus=false;
}

const remote_cmd Ps3_sixad::update(const sensor_msgs::Joy::ConstPtr& joy_msg) {

	double forward = 0.0;
	double backward = 0.0;
	remote_cmd msg;

	msg.linear = 0.0;
	msg.angular = 0.0;
	msg.lift = Lift_STOP;
	msg.undockingLeft = false;
	msg.dockingLeft = false;

	//vel
	forward = std::abs(joy_msg->axes[R2]);
	backward = std::abs(joy_msg->axes[L2]);

	msg.angular = joy_msg->axes[A1_Y];
	msg.linear = (forward - backward) * _linVelThresh;
	msg.angular *= _angVelThresh;

	// lift
	if (joy_msg->buttons[B_UP])
		msg.lift = Lift_UP;
	else if (joy_msg->buttons[B_DOWN])
		msg.lift = Lift_DOWN;
	else
		msg.lift = Lift_STOP;

    // safety mode toggle request (debounced toggle)
    if (joy_msg->buttons[B_START] && (ros::Time::now() - _safetyBtnTime).toSec() > 1.0 && !msg.safety_button)
    {
        _safetyBtnTime = ros::Time::now();
        msg.safety_button = true;
    }
    else
    {
        msg.safety_button = false;
    }

    // hazard signal (debounced toggle)
    if (joy_msg->buttons[B_T] && (ros::Time::now() - _hazardBtnTime).toSec() > 1.0 && !msg.signalHazard)
    {
        _hazardBtnTime = ros::Time::now();
        msg.signalHazard = true;
    }
    else
    {
        msg.signalHazard = false;
    }

    // blink left
    msg.blinkLeft  = joy_msg->buttons[B_S] || joy_msg->buttons[B_LEFT];

    // blink right
    msg.blinkRight = joy_msg->buttons[B_C] || joy_msg->buttons[B_RIGHT];

    // buzzer
    msg.buzz       = joy_msg->buttons[B_X];


	// Warn light
    //msg.warnLight  = joy_msg->buttons[B_SELECT];
//    if (joy_msg->buttons[B_SELECT] == true){
//    	if(!_selectLastStatus){
//    		_selectLastStatus = true;
//    	}
//    }
//    else if (_selectLastStatus){
//    	msg.warnLight  = true;
//    	_selectLastStatus = false;
//    }
//    else
//    	msg.warnLight  = false;

    if(joy_msg->buttons[B_SELECT] == true && _selectLastStatus == false)
    	msg.warnLight  = true;
    else
    	msg.warnLight  = false;

    _selectLastStatus = joy_msg->buttons[B_SELECT];


	return msg;
}

/*bool checkTrigerButtons(bool actualButtonStatus, bool _Bselect_last_value){


if (actualButtonStatus == 

}*/

int Ps3_sixad::getId() {
	return PS3_SIXAD;
}


