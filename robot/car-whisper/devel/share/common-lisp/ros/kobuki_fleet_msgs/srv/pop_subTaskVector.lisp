; Auto-generated. Do not edit!


(cl:in-package kobuki_fleet_msgs-srv)


;//! \htmlinclude pop_subTaskVector-request.msg.html

(cl:defclass <pop_subTaskVector-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass pop_subTaskVector-request (<pop_subTaskVector-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pop_subTaskVector-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pop_subTaskVector-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_fleet_msgs-srv:<pop_subTaskVector-request> is deprecated: use kobuki_fleet_msgs-srv:pop_subTaskVector-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pop_subTaskVector-request>) ostream)
  "Serializes a message object of type '<pop_subTaskVector-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pop_subTaskVector-request>) istream)
  "Deserializes a message object of type '<pop_subTaskVector-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pop_subTaskVector-request>)))
  "Returns string type for a service object of type '<pop_subTaskVector-request>"
  "kobuki_fleet_msgs/pop_subTaskVectorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pop_subTaskVector-request)))
  "Returns string type for a service object of type 'pop_subTaskVector-request"
  "kobuki_fleet_msgs/pop_subTaskVectorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pop_subTaskVector-request>)))
  "Returns md5sum for a message object of type '<pop_subTaskVector-request>"
  "cdb46408d10f651b07e84467b6434812")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pop_subTaskVector-request)))
  "Returns md5sum for a message object of type 'pop_subTaskVector-request"
  "cdb46408d10f651b07e84467b6434812")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pop_subTaskVector-request>)))
  "Returns full string definition for message of type '<pop_subTaskVector-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pop_subTaskVector-request)))
  "Returns full string definition for message of type 'pop_subTaskVector-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pop_subTaskVector-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pop_subTaskVector-request>))
  "Converts a ROS message object to a list"
  (cl:list 'pop_subTaskVector-request
))
;//! \htmlinclude pop_subTaskVector-response.msg.html

(cl:defclass <pop_subTaskVector-response> (roslisp-msg-protocol:ros-message)
  ((subTasks
    :reader subTasks
    :initarg :subTasks
    :type kobuki_fleet_msgs-msg:SubTaskVector
    :initform (cl:make-instance 'kobuki_fleet_msgs-msg:SubTaskVector))
   (currentTask
    :reader currentTask
    :initarg :currentTask
    :type kobuki_fleet_msgs-msg:Task
    :initform (cl:make-instance 'kobuki_fleet_msgs-msg:Task))
   (status
    :reader status
    :initarg :status
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass pop_subTaskVector-response (<pop_subTaskVector-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pop_subTaskVector-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pop_subTaskVector-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_fleet_msgs-srv:<pop_subTaskVector-response> is deprecated: use kobuki_fleet_msgs-srv:pop_subTaskVector-response instead.")))

(cl:ensure-generic-function 'subTasks-val :lambda-list '(m))
(cl:defmethod subTasks-val ((m <pop_subTaskVector-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:subTasks-val is deprecated.  Use kobuki_fleet_msgs-srv:subTasks instead.")
  (subTasks m))

(cl:ensure-generic-function 'currentTask-val :lambda-list '(m))
(cl:defmethod currentTask-val ((m <pop_subTaskVector-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:currentTask-val is deprecated.  Use kobuki_fleet_msgs-srv:currentTask instead.")
  (currentTask m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <pop_subTaskVector-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:status-val is deprecated.  Use kobuki_fleet_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pop_subTaskVector-response>) ostream)
  "Serializes a message object of type '<pop_subTaskVector-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'subTasks) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'currentTask) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pop_subTaskVector-response>) istream)
  "Deserializes a message object of type '<pop_subTaskVector-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'subTasks) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'currentTask) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pop_subTaskVector-response>)))
  "Returns string type for a service object of type '<pop_subTaskVector-response>"
  "kobuki_fleet_msgs/pop_subTaskVectorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pop_subTaskVector-response)))
  "Returns string type for a service object of type 'pop_subTaskVector-response"
  "kobuki_fleet_msgs/pop_subTaskVectorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pop_subTaskVector-response>)))
  "Returns md5sum for a message object of type '<pop_subTaskVector-response>"
  "cdb46408d10f651b07e84467b6434812")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pop_subTaskVector-response)))
  "Returns md5sum for a message object of type 'pop_subTaskVector-response"
  "cdb46408d10f651b07e84467b6434812")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pop_subTaskVector-response>)))
  "Returns full string definition for message of type '<pop_subTaskVector-response>"
  (cl:format cl:nil "kobuki_fleet_msgs/SubTaskVector subTasks~%kobuki_fleet_msgs/Task currentTask~%std_msgs/Bool status~%~%~%================================================================================~%MSG: kobuki_fleet_msgs/SubTaskVector~%SubTask[] subtasks~%~%================================================================================~%MSG: kobuki_fleet_msgs/SubTask~%string subTasktType~%string serviceArea~%uint16 poseOrientation~%float32 serviceAreaHigh~%geometry_msgs/Pose poseNew~%geometry_msgs/Point pose~%duration waitingTime~%string objectType~%uint16 objectId~%uint16 object2~%uint16 object3~%uint16 containerId~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: kobuki_fleet_msgs/Task~%Header header~%string machineName~%string robotName~%string robotPrimary~%string robotSecondary~%string destinationName~%~%string srcName~%geometry_msgs/Pose robotPose~%geometry_msgs/Pose machinePose~%geometry_msgs/Pose srcPose~%geometry_msgs/Pose destinationPose~%~%uint16 OPEN=0~%uint16 WORKING=1~%uint16 FINISHED=2~%uint16 ERROR=3~%uint16 CANCELLED=4~%uint16 ROBOTFINISHED=5~%uint16 IDLE=6~%uint16 taskStatus~%~%uint16 REPLENISHMENT=1~%uint16 DELIVERY=2~%uint16 GOTO=3~%uint16 CALL=4~%uint16 taskType~%~%uint16 typeA=1~%uint16 typeB=2~%uint16 taskMaterialType~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pop_subTaskVector-response)))
  "Returns full string definition for message of type 'pop_subTaskVector-response"
  (cl:format cl:nil "kobuki_fleet_msgs/SubTaskVector subTasks~%kobuki_fleet_msgs/Task currentTask~%std_msgs/Bool status~%~%~%================================================================================~%MSG: kobuki_fleet_msgs/SubTaskVector~%SubTask[] subtasks~%~%================================================================================~%MSG: kobuki_fleet_msgs/SubTask~%string subTasktType~%string serviceArea~%uint16 poseOrientation~%float32 serviceAreaHigh~%geometry_msgs/Pose poseNew~%geometry_msgs/Point pose~%duration waitingTime~%string objectType~%uint16 objectId~%uint16 object2~%uint16 object3~%uint16 containerId~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: kobuki_fleet_msgs/Task~%Header header~%string machineName~%string robotName~%string robotPrimary~%string robotSecondary~%string destinationName~%~%string srcName~%geometry_msgs/Pose robotPose~%geometry_msgs/Pose machinePose~%geometry_msgs/Pose srcPose~%geometry_msgs/Pose destinationPose~%~%uint16 OPEN=0~%uint16 WORKING=1~%uint16 FINISHED=2~%uint16 ERROR=3~%uint16 CANCELLED=4~%uint16 ROBOTFINISHED=5~%uint16 IDLE=6~%uint16 taskStatus~%~%uint16 REPLENISHMENT=1~%uint16 DELIVERY=2~%uint16 GOTO=3~%uint16 CALL=4~%uint16 taskType~%~%uint16 typeA=1~%uint16 typeB=2~%uint16 taskMaterialType~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pop_subTaskVector-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'subTasks))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'currentTask))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pop_subTaskVector-response>))
  "Converts a ROS message object to a list"
  (cl:list 'pop_subTaskVector-response
    (cl:cons ':subTasks (subTasks msg))
    (cl:cons ':currentTask (currentTask msg))
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'pop_subTaskVector)))
  'pop_subTaskVector-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'pop_subTaskVector)))
  'pop_subTaskVector-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pop_subTaskVector)))
  "Returns string type for a service object of type '<pop_subTaskVector>"
  "kobuki_fleet_msgs/pop_subTaskVector")