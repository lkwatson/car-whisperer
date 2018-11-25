/*
 * Ps3_sixad.h
 *
 *  Created on: 21.04.2015
 *      Author: amndan
 */

#ifndef PS3_SIXAD_H_
#define PS3_SIXAD_H_

#include <sensor_msgs/Joy.h>
#include <remote_cmd_msgs.h>
#include <Remote.h>



/**
 * @class Ps3_sixad
 * @brief Implementation of abstract class Remote for ps3-controller with ROS driver
 * @author Daniel Ammon (TH-Nuernberg)
 */
class Ps3_sixad : public Remote {
public:
	 Ps3_sixad();

	const remote_cmd update(const sensor_msgs::Joy::ConstPtr& ps3_msg);

	int getId();

	bool checkTrigerButtons(bool actualButtonStatus);

	~Ps3_sixad(){}
private:
	ros::Time _safetyBtnTime;
	ros::Time _hazardBtnTime;

	bool _circleLastStatus;
	bool _squareLastStatus;
	bool _triangleLastStatus;
	bool _xLastStatus;
	bool _selectLastStatus;
};

#endif /* PS3_SIXAD_H_ */
