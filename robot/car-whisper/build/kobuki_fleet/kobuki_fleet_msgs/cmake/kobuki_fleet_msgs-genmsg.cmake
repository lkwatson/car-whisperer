# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "kobuki_fleet_msgs: 19 messages, 9 services")

set(MSG_I_FLAGS "-Ikobuki_fleet_msgs:/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg;-Ikobuki_fleet_msgs:/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(kobuki_fleet_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionFeedback.msg" NAME_WE)
add_custom_target(_kobuki_fleet_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_fleet_msgs" "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionFeedback.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:kobuki_fleet_msgs/ManagerTaskFeedback"
)

get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/SubTask.msg" NAME_WE)
add_custom_target(_kobuki_fleet_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_fleet_msgs" "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/SubTask.msg" "geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskFeedback.msg" NAME_WE)
add_custom_target(_kobuki_fleet_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_fleet_msgs" "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskFeedback.msg" ""
)

get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/NewTaskList.msg" NAME_WE)
add_custom_target(_kobuki_fleet_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_fleet_msgs" "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/NewTaskList.msg" "kobuki_fleet_msgs/NewTask:std_msgs/Header"
)

get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/LocationIdentifier.msg" NAME_WE)
add_custom_target(_kobuki_fleet_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_fleet_msgs" "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/LocationIdentifier.msg" "std_msgs/UInt64:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Pose:std_msgs/Int16:std_msgs/String"
)

get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/TaskList.msg" NAME_WE)
add_custom_target(_kobuki_fleet_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_fleet_msgs" "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/TaskList.msg" "geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/Quaternion:std_msgs/Header:kobuki_fleet_msgs/Task"
)

get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/NewTask.msg" NAME_WE)
add_custom_target(_kobuki_fleet_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_fleet_msgs" "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/NewTask.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskResult.msg" NAME_WE)
add_custom_target(_kobuki_fleet_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_fleet_msgs" "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskResult.msg" ""
)

get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/BiddingOffer.srv" NAME_WE)
add_custom_target(_kobuki_fleet_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_fleet_msgs" "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/BiddingOffer.srv" "kobuki_fleet_msgs/Bidding:std_msgs/Header"
)

get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/HeartBeatList.msg" NAME_WE)
add_custom_target(_kobuki_fleet_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_fleet_msgs" "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/HeartBeatList.msg" "kobuki_fleet_msgs/HeartBeat:std_msgs/Header"
)

get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/AssignTask.srv" NAME_WE)
add_custom_target(_kobuki_fleet_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_fleet_msgs" "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/AssignTask.srv" "std_msgs/Header:std_msgs/Bool"
)

get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/getInventoryData.srv" NAME_WE)
add_custom_target(_kobuki_fleet_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_fleet_msgs" "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/getInventoryData.srv" "std_msgs/String:geometry_msgs/Quaternion:std_msgs/Float32:std_msgs/Header:geometry_msgs/Point:geometry_msgs/Pose:std_msgs/Int16:sensor_msgs/LaserScan:std_msgs/Bool"
)

get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/StateMachineStat.msg" NAME_WE)
add_custom_target(_kobuki_fleet_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_fleet_msgs" "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/StateMachineStat.msg" ""
)

get_filename_component(_filename "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionResult.msg" NAME_WE)
add_custom_target(_kobuki_fleet_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_fleet_msgs" "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionResult.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:kobuki_fleet_msgs/ManagerTaskResult"
)

get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/Task.msg" NAME_WE)
add_custom_target(_kobuki_fleet_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_fleet_msgs" "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/Task.msg" "geometry_msgs/Point:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/setInventoryData.srv" NAME_WE)
add_custom_target(_kobuki_fleet_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_fleet_msgs" "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/setInventoryData.srv" "std_msgs/String:geometry_msgs/Quaternion:std_msgs/Float32:std_msgs/Header:geometry_msgs/Point:geometry_msgs/Pose:std_msgs/Int16:sensor_msgs/LaserScan:std_msgs/Bool"
)

get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/getAllInventoryData.srv" NAME_WE)
add_custom_target(_kobuki_fleet_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_fleet_msgs" "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/getAllInventoryData.srv" "kobuki_fleet_msgs/LocationIdentifier:std_msgs/String:std_msgs/UInt64:geometry_msgs/Quaternion:geometry_msgs/Point:std_msgs/Int16:std_msgs/Bool:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/Bidding.msg" NAME_WE)
add_custom_target(_kobuki_fleet_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_fleet_msgs" "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/Bidding.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionGoal.msg" NAME_WE)
add_custom_target(_kobuki_fleet_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_fleet_msgs" "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionGoal.msg" "kobuki_fleet_msgs/NewTask:actionlib_msgs/GoalID:std_msgs/Header:kobuki_fleet_msgs/ManagerTaskGoal"
)

get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/GetCurrentTask.srv" NAME_WE)
add_custom_target(_kobuki_fleet_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_fleet_msgs" "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/GetCurrentTask.srv" "geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/Quaternion:kobuki_fleet_msgs/Task:std_msgs/Header"
)

get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/TaskStatus.srv" NAME_WE)
add_custom_target(_kobuki_fleet_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_fleet_msgs" "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/TaskStatus.srv" ""
)

get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/SubTaskVector.msg" NAME_WE)
add_custom_target(_kobuki_fleet_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_fleet_msgs" "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/SubTaskVector.msg" "geometry_msgs/Quaternion:kobuki_fleet_msgs/SubTask:geometry_msgs/Point:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskAction.msg" NAME_WE)
add_custom_target(_kobuki_fleet_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_fleet_msgs" "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskAction.msg" "kobuki_fleet_msgs/ManagerTaskResult:kobuki_fleet_msgs/ManagerTaskFeedback:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:kobuki_fleet_msgs/ManagerTaskActionFeedback:std_msgs/Header:kobuki_fleet_msgs/ManagerTaskActionGoal:kobuki_fleet_msgs/NewTask:kobuki_fleet_msgs/ManagerTaskGoal:kobuki_fleet_msgs/ManagerTaskActionResult"
)

get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/CreateNewTask.srv" NAME_WE)
add_custom_target(_kobuki_fleet_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_fleet_msgs" "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/CreateNewTask.srv" ""
)

get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/ConnectionState.msg" NAME_WE)
add_custom_target(_kobuki_fleet_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_fleet_msgs" "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/ConnectionState.msg" ""
)

get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/HeartBeat.msg" NAME_WE)
add_custom_target(_kobuki_fleet_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_fleet_msgs" "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/HeartBeat.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskGoal.msg" NAME_WE)
add_custom_target(_kobuki_fleet_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_fleet_msgs" "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskGoal.msg" "kobuki_fleet_msgs/NewTask:std_msgs/Header"
)

get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/pop_subTaskVector.srv" NAME_WE)
add_custom_target(_kobuki_fleet_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_fleet_msgs" "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/pop_subTaskVector.srv" "geometry_msgs/Point:kobuki_fleet_msgs/Task:kobuki_fleet_msgs/SubTask:kobuki_fleet_msgs/SubTaskVector:std_msgs/Header:geometry_msgs/Quaternion:std_msgs/Bool:geometry_msgs/Pose"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_cpp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/SubTaskVector.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/SubTask.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_cpp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/ConnectionState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_cpp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_cpp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_cpp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/Bidding.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_cpp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/NewTask.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_cpp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/HeartBeatList.msg"
  "${MSG_I_FLAGS}"
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/HeartBeat.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_cpp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskResult.msg;/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionGoal.msg;/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/NewTask.msg;/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskGoal.msg;/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_cpp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/NewTaskList.msg"
  "${MSG_I_FLAGS}"
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/NewTask.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_cpp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/LocationIdentifier.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/UInt64.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int16.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_cpp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/TaskList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/Task.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_cpp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/StateMachineStat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_cpp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/Task.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_cpp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_cpp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/HeartBeat.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_cpp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/NewTask.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_cpp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/SubTask.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_cpp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/NewTask.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_fleet_msgs
)

### Generating Services
_generate_srv_cpp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/BiddingOffer.srv"
  "${MSG_I_FLAGS}"
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/Bidding.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_srv_cpp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/getAllInventoryData.srv"
  "${MSG_I_FLAGS}"
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/LocationIdentifier.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/UInt64.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int16.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_srv_cpp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/GetCurrentTask.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/Task.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_srv_cpp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/CreateNewTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_srv_cpp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/AssignTask.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_srv_cpp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/TaskStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_srv_cpp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/setInventoryData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int16.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_srv_cpp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/getInventoryData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int16.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_srv_cpp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/pop_subTaskVector.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/Task.msg;/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/SubTask.msg;/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/SubTaskVector.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_fleet_msgs
)

### Generating Module File
_generate_module_cpp(kobuki_fleet_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_fleet_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(kobuki_fleet_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(kobuki_fleet_msgs_generate_messages kobuki_fleet_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionFeedback.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_cpp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/SubTask.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_cpp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskFeedback.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_cpp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/NewTaskList.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_cpp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/LocationIdentifier.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_cpp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/TaskList.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_cpp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/NewTask.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_cpp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskResult.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_cpp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/BiddingOffer.srv" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_cpp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/HeartBeatList.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_cpp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/AssignTask.srv" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_cpp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/getInventoryData.srv" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_cpp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/StateMachineStat.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_cpp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionResult.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_cpp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/Task.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_cpp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/setInventoryData.srv" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_cpp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/getAllInventoryData.srv" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_cpp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/Bidding.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_cpp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionGoal.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_cpp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/GetCurrentTask.srv" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_cpp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/TaskStatus.srv" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_cpp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/SubTaskVector.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_cpp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskAction.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_cpp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/CreateNewTask.srv" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_cpp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/ConnectionState.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_cpp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/HeartBeat.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_cpp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskGoal.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_cpp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/pop_subTaskVector.srv" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_cpp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kobuki_fleet_msgs_gencpp)
add_dependencies(kobuki_fleet_msgs_gencpp kobuki_fleet_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kobuki_fleet_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_lisp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/SubTaskVector.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/SubTask.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_lisp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/ConnectionState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_lisp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_lisp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_lisp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/Bidding.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_lisp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/NewTask.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_lisp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/HeartBeatList.msg"
  "${MSG_I_FLAGS}"
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/HeartBeat.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_lisp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskResult.msg;/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionGoal.msg;/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/NewTask.msg;/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskGoal.msg;/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_lisp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/NewTaskList.msg"
  "${MSG_I_FLAGS}"
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/NewTask.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_lisp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/LocationIdentifier.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/UInt64.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int16.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_lisp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/TaskList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/Task.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_lisp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/StateMachineStat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_lisp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/Task.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_lisp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_lisp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/HeartBeat.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_lisp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/NewTask.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_lisp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/SubTask.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_lisp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/NewTask.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_fleet_msgs
)

### Generating Services
_generate_srv_lisp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/BiddingOffer.srv"
  "${MSG_I_FLAGS}"
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/Bidding.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_srv_lisp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/getAllInventoryData.srv"
  "${MSG_I_FLAGS}"
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/LocationIdentifier.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/UInt64.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int16.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_srv_lisp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/GetCurrentTask.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/Task.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_srv_lisp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/CreateNewTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_srv_lisp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/AssignTask.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_srv_lisp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/TaskStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_srv_lisp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/setInventoryData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int16.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_srv_lisp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/getInventoryData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int16.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_srv_lisp(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/pop_subTaskVector.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/Task.msg;/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/SubTask.msg;/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/SubTaskVector.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_fleet_msgs
)

### Generating Module File
_generate_module_lisp(kobuki_fleet_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_fleet_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(kobuki_fleet_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(kobuki_fleet_msgs_generate_messages kobuki_fleet_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionFeedback.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_lisp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/SubTask.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_lisp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskFeedback.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_lisp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/NewTaskList.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_lisp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/LocationIdentifier.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_lisp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/TaskList.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_lisp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/NewTask.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_lisp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskResult.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_lisp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/BiddingOffer.srv" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_lisp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/HeartBeatList.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_lisp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/AssignTask.srv" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_lisp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/getInventoryData.srv" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_lisp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/StateMachineStat.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_lisp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionResult.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_lisp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/Task.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_lisp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/setInventoryData.srv" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_lisp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/getAllInventoryData.srv" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_lisp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/Bidding.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_lisp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionGoal.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_lisp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/GetCurrentTask.srv" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_lisp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/TaskStatus.srv" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_lisp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/SubTaskVector.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_lisp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskAction.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_lisp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/CreateNewTask.srv" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_lisp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/ConnectionState.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_lisp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/HeartBeat.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_lisp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskGoal.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_lisp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/pop_subTaskVector.srv" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_lisp _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kobuki_fleet_msgs_genlisp)
add_dependencies(kobuki_fleet_msgs_genlisp kobuki_fleet_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kobuki_fleet_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(kobuki_fleet_msgs
  "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_py(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/SubTaskVector.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/SubTask.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_py(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/ConnectionState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_py(kobuki_fleet_msgs
  "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_py(kobuki_fleet_msgs
  "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_py(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/Bidding.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_py(kobuki_fleet_msgs
  "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/NewTask.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_py(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/HeartBeatList.msg"
  "${MSG_I_FLAGS}"
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/HeartBeat.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_py(kobuki_fleet_msgs
  "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskResult.msg;/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionGoal.msg;/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/NewTask.msg;/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskGoal.msg;/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_py(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/NewTaskList.msg"
  "${MSG_I_FLAGS}"
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/NewTask.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_py(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/LocationIdentifier.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/UInt64.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int16.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_py(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/TaskList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/Task.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_py(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/StateMachineStat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_py(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/Task.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_py(kobuki_fleet_msgs
  "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_py(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/HeartBeat.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_py(kobuki_fleet_msgs
  "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/NewTask.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_py(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/SubTask.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_msg_py(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/NewTask.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs
)

### Generating Services
_generate_srv_py(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/BiddingOffer.srv"
  "${MSG_I_FLAGS}"
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/Bidding.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_srv_py(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/getAllInventoryData.srv"
  "${MSG_I_FLAGS}"
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/LocationIdentifier.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/UInt64.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int16.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_srv_py(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/GetCurrentTask.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/Task.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_srv_py(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/CreateNewTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_srv_py(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/AssignTask.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_srv_py(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/TaskStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_srv_py(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/setInventoryData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int16.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_srv_py(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/getInventoryData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int16.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs
)
_generate_srv_py(kobuki_fleet_msgs
  "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/pop_subTaskVector.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/Task.msg;/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/SubTask.msg;/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/SubTaskVector.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs
)

### Generating Module File
_generate_module_py(kobuki_fleet_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(kobuki_fleet_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(kobuki_fleet_msgs_generate_messages kobuki_fleet_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionFeedback.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_py _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/SubTask.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_py _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskFeedback.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_py _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/NewTaskList.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_py _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/LocationIdentifier.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_py _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/TaskList.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_py _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/NewTask.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_py _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskResult.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_py _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/BiddingOffer.srv" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_py _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/HeartBeatList.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_py _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/AssignTask.srv" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_py _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/getInventoryData.srv" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_py _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/StateMachineStat.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_py _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionResult.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_py _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/Task.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_py _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/setInventoryData.srv" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_py _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/getAllInventoryData.srv" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_py _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/Bidding.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_py _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskActionGoal.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_py _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/GetCurrentTask.srv" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_py _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/TaskStatus.srv" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_py _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/SubTaskVector.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_py _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskAction.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_py _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/CreateNewTask.srv" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_py _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/ConnectionState.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_py _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/msg/HeartBeat.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_py _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/devel/share/kobuki_fleet_msgs/msg/ManagerTaskGoal.msg" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_py _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/car-whisper/src/kobuki_fleet/kobuki_fleet_msgs/srv/pop_subTaskVector.srv" NAME_WE)
add_dependencies(kobuki_fleet_msgs_generate_messages_py _kobuki_fleet_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kobuki_fleet_msgs_genpy)
add_dependencies(kobuki_fleet_msgs_genpy kobuki_fleet_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kobuki_fleet_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_fleet_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_fleet_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(kobuki_fleet_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(kobuki_fleet_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(kobuki_fleet_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(kobuki_fleet_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_fleet_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_fleet_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(kobuki_fleet_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(kobuki_fleet_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(kobuki_fleet_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(kobuki_fleet_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_fleet_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(kobuki_fleet_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(kobuki_fleet_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(kobuki_fleet_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(kobuki_fleet_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
