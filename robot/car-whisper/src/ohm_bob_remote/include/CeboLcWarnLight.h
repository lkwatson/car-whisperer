/*
 * CeboLcWarnLight.h
 *
 *  Created on: 02.12.2015
 *      Author: brob
 */

#ifndef OHM_BOB_REMOTE_CEBO_LC_WARNLIGHT_H_
#define OHM_BOB_REMOTE_CEBO_LC_WARNLIGHT_H_

#include "ros/ros.h"
#include "CeboLcWarnLight_enum.h"
#include <std_msgs/Bool.h>

/**
 * @class   CeboLcWarnLight
 * @brief   A class for a warnLight connected to a CeboLc module
 * @author  brob
 * @date    12.10.2015
 */

class CeboLcWarnLight
{
    public:
        CeboLcWarnLight();
        ~CeboLcWarnLight();
        void set(CeboLcWarnLightStatus status);
        void toggle();

    private:
        ros::NodeHandle _nh;
        ros::Publisher _warnLightPub;

        bool _actualState;
};


#endif /* OHM_BOB_REMOTE_CEBO_LC_WARNLIGHT_H_ */
