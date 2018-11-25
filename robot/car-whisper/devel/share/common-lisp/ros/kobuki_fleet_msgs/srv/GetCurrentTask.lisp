; Auto-generated. Do not edit!


(cl:in-package kobuki_fleet_msgs-srv)


;//! \htmlinclude GetCurrentTask-request.msg.html

(cl:defclass <GetCurrentTask-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetCurrentTask-request (<GetCurrentTask-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCurrentTask-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCurrentTask-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_fleet_msgs-srv:<GetCurrentTask-request> is deprecated: use kobuki_fleet_msgs-srv:GetCurrentTask-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCurrentTask-request>) ostream)
  "Serializes a message object of type '<GetCurrentTask-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCurrentTask-request>) istream)
  "Deserializes a message object of type '<GetCurrentTask-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCurrentTask-request>)))
  "Returns string type for a service object of type '<GetCurrentTask-request>"
  "kobuki_fleet_msgs/GetCurrentTaskRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurrentTask-request)))
  "Returns string type for a service object of type 'GetCurrentTask-request"
  "kobuki_fleet_msgs/GetCurrentTaskRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCurrentTask-request>)))
  "Returns md5sum for a message object of type '<GetCurrentTask-request>"
  "7566c2d6497dfafdb82ac945e8c8e663")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCurrentTask-request)))
  "Returns md5sum for a message object of type 'GetCurrentTask-request"
  "7566c2d6497dfafdb82ac945e8c8e663")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCurrentTask-request>)))
  "Returns full string definition for message of type '<GetCurrentTask-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCurrentTask-request)))
  "Returns full string definition for message of type 'GetCurrentTask-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCurrentTask-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCurrentTask-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCurrentTask-request
))
;//! \htmlinclude GetCurrentTask-response.msg.html

(cl:defclass <GetCurrentTask-response> (roslisp-msg-protocol:ros-message)
  ((currentTask
    :reader currentTask
    :initarg :currentTask
    :type kobuki_fleet_msgs-msg:Task
    :initform (cl:make-instance 'kobuki_fleet_msgs-msg:Task))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetCurrentTask-response (<GetCurrentTask-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCurrentTask-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCurrentTask-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_fleet_msgs-srv:<GetCurrentTask-response> is deprecated: use kobuki_fleet_msgs-srv:GetCurrentTask-response instead.")))

(cl:ensure-generic-function 'currentTask-val :lambda-list '(m))
(cl:defmethod currentTask-val ((m <GetCurrentTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:currentTask-val is deprecated.  Use kobuki_fleet_msgs-srv:currentTask instead.")
  (currentTask m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetCurrentTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:success-val is deprecated.  Use kobuki_fleet_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCurrentTask-response>) ostream)
  "Serializes a message object of type '<GetCurrentTask-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'currentTask) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCurrentTask-response>) istream)
  "Deserializes a message object of type '<GetCurrentTask-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'currentTask) istream)
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCurrentTask-response>)))
  "Returns string type for a service object of type '<GetCurrentTask-response>"
  "kobuki_fleet_msgs/GetCurrentTaskResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurrentTask-response)))
  "Returns string type for a service object of type 'GetCurrentTask-response"
  "kobuki_fleet_msgs/GetCurrentTaskResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCurrentTask-response>)))
  "Returns md5sum for a message object of type '<GetCurrentTask-response>"
  "7566c2d6497dfafdb82ac945e8c8e663")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCurrentTask-response)))
  "Returns md5sum for a message object of type 'GetCurrentTask-response"
  "7566c2d6497dfafdb82ac945e8c8e663")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCurrentTask-response>)))
  "Returns full string definition for message of type '<GetCurrentTask-response>"
  (cl:format cl:nil "kobuki_fleet_msgs/Task currentTask~%bool success~%~%~%================================================================================~%MSG: kobuki_fleet_msgs/Task~%Header header~%string machineName~%string robotName~%string robotPrimary~%string robotSecondary~%string destinationName~%~%string srcName~%geometry_msgs/Pose robotPose~%geometry_msgs/Pose machinePose~%geometry_msgs/Pose srcPose~%geometry_msgs/Pose destinationPose~%~%uint16 OPEN=0~%uint16 WORKING=1~%uint16 FINISHED=2~%uint16 ERROR=3~%uint16 CANCELLED=4~%uint16 ROBOTFINISHED=5~%uint16 IDLE=6~%uint16 taskStatus~%~%uint16 REPLENISHMENT=1~%uint16 DELIVERY=2~%uint16 GOTO=3~%uint16 CALL=4~%uint16 taskType~%~%uint16 typeA=1~%uint16 typeB=2~%uint16 taskMaterialType~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCurrentTask-response)))
  "Returns full string definition for message of type 'GetCurrentTask-response"
  (cl:format cl:nil "kobuki_fleet_msgs/Task currentTask~%bool success~%~%~%================================================================================~%MSG: kobuki_fleet_msgs/Task~%Header header~%string machineName~%string robotName~%string robotPrimary~%string robotSecondary~%string destinationName~%~%string srcName~%geometry_msgs/Pose robotPose~%geometry_msgs/Pose machinePose~%geometry_msgs/Pose srcPose~%geometry_msgs/Pose destinationPose~%~%uint16 OPEN=0~%uint16 WORKING=1~%uint16 FINISHED=2~%uint16 ERROR=3~%uint16 CANCELLED=4~%uint16 ROBOTFINISHED=5~%uint16 IDLE=6~%uint16 taskStatus~%~%uint16 REPLENISHMENT=1~%uint16 DELIVERY=2~%uint16 GOTO=3~%uint16 CALL=4~%uint16 taskType~%~%uint16 typeA=1~%uint16 typeB=2~%uint16 taskMaterialType~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCurrentTask-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'currentTask))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCurrentTask-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCurrentTask-response
    (cl:cons ':currentTask (currentTask msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCurrentTask)))
  'GetCurrentTask-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCurrentTask)))
  'GetCurrentTask-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurrentTask)))
  "Returns string type for a service object of type '<GetCurrentTask>"
  "kobuki_fleet_msgs/GetCurrentTask")