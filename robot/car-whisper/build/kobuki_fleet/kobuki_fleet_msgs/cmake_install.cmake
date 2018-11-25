# Install script for directory: /home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/odroid/car-whisper/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "RELEASE")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kobuki_fleet_msgs/msg" TYPE FILE FILES
    "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/HeartBeat.msg"
    "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/HeartBeatList.msg"
    "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/Task.msg"
    "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/TaskList.msg"
    "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/ConnectionState.msg"
    "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/StateMachineStat.msg"
    "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/NewTask.msg"
    "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/NewTaskList.msg"
    "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/Bidding.msg"
    "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/LocationIdentifier.msg"
    "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/SubTask.msg"
    "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/SubTaskVector.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kobuki_fleet_msgs/srv" TYPE FILE FILES
    "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/BiddingOffer.srv"
    "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/AssignTask.srv"
    "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/TaskStatus.srv"
    "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/getAllInventoryData.srv"
    "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/GetCurrentTask.srv"
    "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/getInventoryData.srv"
    "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/setInventoryData.srv"
    "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/pop_subTaskVector.srv"
    "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/CreateNewTask.srv"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kobuki_fleet_msgs/action" TYPE FILE FILES "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/action/ManagerTask.action")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kobuki_fleet_msgs/msg" TYPE FILE FILES
    "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskAction.msg"
    "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionGoal.msg"
    "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionResult.msg"
    "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionFeedback.msg"
    "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskGoal.msg"
    "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskResult.msg"
    "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kobuki_fleet_msgs/cmake" TYPE FILE FILES "/home/odroid/car-whisper/build/kobuki_fleet/kobuki_fleet_msgs/catkin_generated/installspace/kobuki_fleet_msgs-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/odroid/car-whisper/devel/include/kobuki_fleet_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/odroid/car-whisper/devel/share/common-lisp/ros/kobuki_fleet_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/odroid/car-whisper/devel/lib/python2.7/dist-packages/kobuki_fleet_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/odroid/car-whisper/devel/lib/python2.7/dist-packages/kobuki_fleet_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/odroid/car-whisper/build/kobuki_fleet/kobuki_fleet_msgs/catkin_generated/installspace/kobuki_fleet_msgs.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kobuki_fleet_msgs/cmake" TYPE FILE FILES "/home/odroid/car-whisper/build/kobuki_fleet/kobuki_fleet_msgs/catkin_generated/installspace/kobuki_fleet_msgs-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kobuki_fleet_msgs/cmake" TYPE FILE FILES
    "/home/odroid/car-whisper/build/kobuki_fleet/kobuki_fleet_msgs/catkin_generated/installspace/kobuki_fleet_msgsConfig.cmake"
    "/home/odroid/car-whisper/build/kobuki_fleet/kobuki_fleet_msgs/catkin_generated/installspace/kobuki_fleet_msgsConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kobuki_fleet_msgs" TYPE FILE FILES "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

