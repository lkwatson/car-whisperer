/*
 * Remote.h
 *
 *  Created on: 21.04.2015
 *      Author: amndan
 */

#ifndef REMOTE_H_
#define REMOTE_H_

#include <ros/ros.h>
#include <sensor_msgs/Joy.h>
#include <geometry_msgs/Twist.h>
#include <remote_cmd_msgs.h>

/**
 * @class Remote
 * @brief Abstract class for using different remote controls
 * @author Daniel Ammon (TH-Nuernberg)
 */
class Remote {

public:

	double _linVelThresh;
	double _angVelThresh;

	virtual const remote_cmd update(const sensor_msgs::Joy::ConstPtr& joy_msg) = 0;

	virtual int getId() = 0;

	virtual ~Remote() {}
};

#endif /* REMOTE_H_ */
