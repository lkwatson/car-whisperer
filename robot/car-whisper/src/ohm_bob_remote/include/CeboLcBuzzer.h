/*
 * CeboLcBuzzer.h
 *
 *  Created on: 12.10.2015
 *      Author: brob
 */

#ifndef OHM_BOB_REMOTE_CEBO_LC_BUZZER_H_
#define OHM_BOB_REMOTE_CEBO_LC_BUZZER_H_

#include "ros/ros.h"
#include "CeboLcBuzzer_enum.h"
#include <std_msgs/Bool.h>

/**
 * @class   CeboLcBuzzer
 * @brief   A class for a buzzer connected to a CeboLc module
 * @author  brob
 * @date    12.10.2015
 */

class CeboLcBuzzer
{
    public:
        CeboLcBuzzer();
        ~CeboLcBuzzer();
        void set(CeboLcBuzzerStatus status);
        void setBackwards(CeboLcBuzzerStatus status);

    private:
        ros::NodeHandle _nh;
        ros::Publisher _buzzerPub;
        ros::Publisher _buzzerBackwardsPub;
};


#endif /* OHM_BOB_REMOTE_CEBO_LC_BUZZER_H_ */
