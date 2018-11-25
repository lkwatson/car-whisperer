/*
 * CeboLcBlinker_enum.h
 *
 *  Created on: 12.10.2015
 *      Author: brob
 */

#ifndef OHM_BOB_REMOTE_CEBO_LC_BLINKER_ENUM_H_
#define OHM_BOB_REMOTE_CEBO_LC_BLINKER_ENUM_H_

/**
  *  @enum CeboLcBlinkerType
  *  Turn signals connected to the Cebo LC module
  */
enum CeboLcBlinkerType
 {
   RIGHT = 0,           // right turn indictor
   LEFT                 // left turn indicator

 };

enum CeboLcBlinkerStatus
 {
   BLINKER_OFF = 0,        // turning indication or hazard warning off
   BLINKER_ON              // turning indication or hazard warning on
 };

#endif /* OHM_BOB_REMOTE_CEBO_LC_BLINKER_ENUM_H_ */
