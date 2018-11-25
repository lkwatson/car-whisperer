/*
 * CeboLcButton.h
 *
 *  Created on: 09.10.2015
 *      Author: brob
 */

#ifndef OHM_BOB_REMOTE_CEBO_LC_BUTTON_H_
#define OHM_BOB_REMOTE_CEBO_LC_BUTTON_H_

#include "ros/ros.h"
#include "ats_msgs/ioGetButton01.h"
#include "ats_msgs/ioGetButton02.h"
#include "CeboLcButton_enum.h"

/**
 * @class   CeboLcButton
 * @brief   A class for buttons connected to a CeboLc module
 * @author  brob
 * @date    09.10.2015
 */

class CeboLcButton
{
    public:
        CeboLcButton(CeboLcButtonType button);
        bool isPressed();
        virtual ~CeboLcButton();

    private:
        int _button;
        ros::ServiceClient _srvcButton;
        ros::NodeHandle nh;
        ats_msgs::ioGetButton01 srv;
};

#endif /* OHM_BOB_REMOTE_CEBO_LC_LIFT_BUTTON_H_ */
