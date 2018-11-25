/*
 * CeboLcButton.cpp
 *
 *  Created on: 09.10.2015
 *      Author: brob
 */

#include <CeboLcButton.h>

CeboLcButton::CeboLcButton(CeboLcButtonType button) : nh()
{
    this->_button = button;

    if (button == YELLOW) {
        _srvcButton = nh.serviceClient<ats_msgs::ioGetButton01>("managerIoNode/GetButton01");
    } else if (button == GREEN) {
        _srvcButton = nh.serviceClient<ats_msgs::ioGetButton02>("managerIoNode/GetButton02");
    }
    else
    {
        ROS_ERROR_STREAM("Wrong button service requested.");
    }


    // check if service is available for initalization
    while(!_srvcButton.call(srv)){
        ROS_ERROR_STREAM("Failed to call io service for buttons; retrying every second");
        sleep(1);
    }
}

bool CeboLcButton::isPressed()
{
    while(!_srvcButton.call(srv)){
        ROS_ERROR_STREAM("Failed to call io service for buttons; retrying every second");
        sleep(1);
    }

    return srv.response.state;
}

CeboLcButton::~CeboLcButton()
{
}

