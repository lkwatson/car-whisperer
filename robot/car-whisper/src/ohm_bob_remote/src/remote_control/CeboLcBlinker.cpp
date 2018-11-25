/*
 * CeboLcBlinker.cpp
 *
 *  Created on: 12.10.2015
 *      Author: brob
 */

#include <CeboLcBlinker.h>

CeboLcBlinker::CeboLcBlinker(): _nh()
{
    _blinkLeftPub  = _nh.advertise<std_msgs::Bool>("managerIoNode/blinkerLeft", 1);
    _blinkRightPub = _nh.advertise<std_msgs::Bool>("managerIoNode/blinkerRight", 1);
}


void CeboLcBlinker::indicateTurn(CeboLcBlinkerType blinker, CeboLcBlinkerStatus status)
{
    std_msgs::Bool blinkMsg;
    blinkMsg.data = status;
    switch (blinker) {
      case LEFT:
        _blinkLeftPub.publish(blinkMsg);
        break;
      case RIGHT:
        _blinkRightPub.publish(blinkMsg);
        break;
      default:
        ROS_ERROR_STREAM("Invalid turn signal given.");
        break;
      }
}

void CeboLcBlinker::hazardWarning(CeboLcBlinkerStatus status)
{
    std_msgs::Bool blinkMsg;
    blinkMsg.data = status;
    _blinkLeftPub.publish(blinkMsg);
    _blinkRightPub.publish(blinkMsg);
}


CeboLcBlinker::~CeboLcBlinker()
{
    std_msgs::Bool blinkMsg;
    blinkMsg.data = false;
    _blinkLeftPub.publish(blinkMsg);
    _blinkRightPub.publish(blinkMsg);
}

