/*
 * CeboLcBlinker.h
 *
 *  Created on: 12.10.2015
 *      Author: brob
 */

#ifndef OHM_BOB_REMOTE_CEBO_LC_BLINKER_H_
#define OHM_BOB_REMOTE_CEBO_LC_BLINKER_H_

#include "ros/ros.h"
#include "CeboLcBlinker_enum.h"
#include <std_msgs/Bool.h>

/**
 * @class   CeboLcBlinker
 * @brief   A class for turn signals connected to a CeboLc module
 * @author  brob
 * @date    12.10.2015
 */

class CeboLcBlinker
{
    public:
        CeboLcBlinker();
        ~CeboLcBlinker();
        void indicateTurn(CeboLcBlinkerType blinker, CeboLcBlinkerStatus status);
        void hazardWarning(CeboLcBlinkerStatus status);

    private:
        ros::NodeHandle _nh;
        ros::Publisher _blinkLeftPub;
        ros::Publisher _blinkRightPub;
};


#endif /* OHM_BOB_REMOTE_CEBO_LC_BLINKER_H_ */
