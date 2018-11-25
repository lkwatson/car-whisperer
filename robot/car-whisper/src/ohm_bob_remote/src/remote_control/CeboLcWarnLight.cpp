/*
 * CeboLcWarnLight.cpp
 *
 *  Created on: 2.12.2015
 *      Author: brob
 */

#include <CeboLcWarnLight.h>

CeboLcWarnLight::CeboLcWarnLight(): _nh()
{
	_actualState = false;
    _warnLightPub  = _nh.advertise<std_msgs::Bool>("managerIoNode/warnLight", 1);
}


void CeboLcWarnLight::set(CeboLcWarnLightStatus status)
{
    std_msgs::Bool warnLightMsg;
    warnLightMsg.data = status;
    _warnLightPub.publish(warnLightMsg);

}

void CeboLcWarnLight::toggle()
{
	std_msgs::Bool warnLightMsg;

	if (_actualState){
		warnLightMsg.data = false;
		_actualState = false;
	}
	else {
		warnLightMsg.data = true;
		_actualState = true;
	}

	//publish i times to make sure that it is read //ToDO: create a service in CeboIO to do it one.
	for(int i=0;i<5;i++){
		_warnLightPub.publish(warnLightMsg);
	}
}

CeboLcWarnLight::~CeboLcWarnLight()
{
    std_msgs::Bool warnLightMsg;
    warnLightMsg.data = false;
    _warnLightPub.publish(warnLightMsg);
}
