/*
 * CeboLcBuzzer.cpp
 *
 *  Created on: 12.10.2015
 *      Author: brob
 */

#include <CeboLcBuzzer.h>

CeboLcBuzzer::CeboLcBuzzer(): _nh()
{

    _buzzerPub  = _nh.advertise<std_msgs::Bool>("managerIoNode/buzzer", 1);
    _buzzerBackwardsPub  = _nh.advertise<std_msgs::Bool>("managerIoNode/buzzerBackwards", 1);
}


void CeboLcBuzzer::set(CeboLcBuzzerStatus status)
{
    std_msgs::Bool buzzerMsg;
    buzzerMsg.data = status;
    _buzzerPub.publish(buzzerMsg);
}

void CeboLcBuzzer::setBackwards(CeboLcBuzzerStatus status)
{
    std_msgs::Bool buzzerMsg;
    buzzerMsg.data = status;
    _buzzerBackwardsPub.publish(buzzerMsg);
}

CeboLcBuzzer::~CeboLcBuzzer()
{
    std_msgs::Bool buzzerMsg;
    buzzerMsg.data = false;
    _buzzerPub.publish(buzzerMsg);
    _buzzerBackwardsPub.publish(buzzerMsg);
}

