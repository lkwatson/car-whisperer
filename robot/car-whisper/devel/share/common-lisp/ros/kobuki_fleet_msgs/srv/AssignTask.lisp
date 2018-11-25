; Auto-generated. Do not edit!


(cl:in-package kobuki_fleet_msgs-srv)


;//! \htmlinclude AssignTask-request.msg.html

(cl:defclass <AssignTask-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (machineName
    :reader machineName
    :initarg :machineName
    :type cl:string
    :initform "")
   (robotName
    :reader robotName
    :initarg :robotName
    :type cl:string
    :initform "")
   (robotPrimary
    :reader robotPrimary
    :initarg :robotPrimary
    :type cl:string
    :initform "")
   (robotSecondary
    :reader robotSecondary
    :initarg :robotSecondary
    :type cl:string
    :initform "")
   (taskType
    :reader taskType
    :initarg :taskType
    :type cl:fixnum
    :initform 0)
   (taskPriority
    :reader taskPriority
    :initarg :taskPriority
    :type cl:fixnum
    :initform 0)
   (taskStatus
    :reader taskStatus
    :initarg :taskStatus
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AssignTask-request (<AssignTask-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AssignTask-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AssignTask-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_fleet_msgs-srv:<AssignTask-request> is deprecated: use kobuki_fleet_msgs-srv:AssignTask-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AssignTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:header-val is deprecated.  Use kobuki_fleet_msgs-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'machineName-val :lambda-list '(m))
(cl:defmethod machineName-val ((m <AssignTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:machineName-val is deprecated.  Use kobuki_fleet_msgs-srv:machineName instead.")
  (machineName m))

(cl:ensure-generic-function 'robotName-val :lambda-list '(m))
(cl:defmethod robotName-val ((m <AssignTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:robotName-val is deprecated.  Use kobuki_fleet_msgs-srv:robotName instead.")
  (robotName m))

(cl:ensure-generic-function 'robotPrimary-val :lambda-list '(m))
(cl:defmethod robotPrimary-val ((m <AssignTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:robotPrimary-val is deprecated.  Use kobuki_fleet_msgs-srv:robotPrimary instead.")
  (robotPrimary m))

(cl:ensure-generic-function 'robotSecondary-val :lambda-list '(m))
(cl:defmethod robotSecondary-val ((m <AssignTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:robotSecondary-val is deprecated.  Use kobuki_fleet_msgs-srv:robotSecondary instead.")
  (robotSecondary m))

(cl:ensure-generic-function 'taskType-val :lambda-list '(m))
(cl:defmethod taskType-val ((m <AssignTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:taskType-val is deprecated.  Use kobuki_fleet_msgs-srv:taskType instead.")
  (taskType m))

(cl:ensure-generic-function 'taskPriority-val :lambda-list '(m))
(cl:defmethod taskPriority-val ((m <AssignTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:taskPriority-val is deprecated.  Use kobuki_fleet_msgs-srv:taskPriority instead.")
  (taskPriority m))

(cl:ensure-generic-function 'taskStatus-val :lambda-list '(m))
(cl:defmethod taskStatus-val ((m <AssignTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:taskStatus-val is deprecated.  Use kobuki_fleet_msgs-srv:taskStatus instead.")
  (taskStatus m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AssignTask-request>)))
    "Constants for message type '<AssignTask-request>"
  '((:REPLENISHMENT . 1)
    (:DELIVERY . 2)
    (:GOTO . 3)
    (:CALL . 4)
    (:PRIMARY . 1)
    (:SECONDARY . 2)
    (:OPEN . 0)
    (:WORKING . 1)
    (:FINISHED . 2)
    (:ERROR . 3)
    (:CANCELLED . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AssignTask-request)))
    "Constants for message type 'AssignTask-request"
  '((:REPLENISHMENT . 1)
    (:DELIVERY . 2)
    (:GOTO . 3)
    (:CALL . 4)
    (:PRIMARY . 1)
    (:SECONDARY . 2)
    (:OPEN . 0)
    (:WORKING . 1)
    (:FINISHED . 2)
    (:ERROR . 3)
    (:CANCELLED . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AssignTask-request>) ostream)
  "Serializes a message object of type '<AssignTask-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'machineName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'machineName))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robotName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robotName))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robotPrimary))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robotPrimary))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robotSecondary))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robotSecondary))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskPriority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskPriority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskStatus)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AssignTask-request>) istream)
  "Deserializes a message object of type '<AssignTask-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'machineName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'machineName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robotName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robotName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robotPrimary) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robotPrimary) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robotSecondary) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robotSecondary) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskPriority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskPriority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskStatus)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AssignTask-request>)))
  "Returns string type for a service object of type '<AssignTask-request>"
  "kobuki_fleet_msgs/AssignTaskRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssignTask-request)))
  "Returns string type for a service object of type 'AssignTask-request"
  "kobuki_fleet_msgs/AssignTaskRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AssignTask-request>)))
  "Returns md5sum for a message object of type '<AssignTask-request>"
  "b2e00537ad9afaf702715f57966af958")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AssignTask-request)))
  "Returns md5sum for a message object of type 'AssignTask-request"
  "b2e00537ad9afaf702715f57966af958")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AssignTask-request>)))
  "Returns full string definition for message of type '<AssignTask-request>"
  (cl:format cl:nil "Header header~%string machineName~%string robotName~%string robotPrimary~%string robotSecondary~%~%~%uint16 REPLENISHMENT=1~%uint16 DELIVERY=2~%uint16 GOTO=3~%uint16 CALL=4~%uint16 taskType~%~%uint16 PRIMARY=1~%uint16 SECONDARY=2~%uint16 taskPriority~%~%uint16 OPEN=0~%uint16 WORKING=1~%uint16 FINISHED=2~%uint16 ERROR=3~%uint16 CANCELLED=4~%uint16 taskStatus~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AssignTask-request)))
  "Returns full string definition for message of type 'AssignTask-request"
  (cl:format cl:nil "Header header~%string machineName~%string robotName~%string robotPrimary~%string robotSecondary~%~%~%uint16 REPLENISHMENT=1~%uint16 DELIVERY=2~%uint16 GOTO=3~%uint16 CALL=4~%uint16 taskType~%~%uint16 PRIMARY=1~%uint16 SECONDARY=2~%uint16 taskPriority~%~%uint16 OPEN=0~%uint16 WORKING=1~%uint16 FINISHED=2~%uint16 ERROR=3~%uint16 CANCELLED=4~%uint16 taskStatus~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AssignTask-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'machineName))
     4 (cl:length (cl:slot-value msg 'robotName))
     4 (cl:length (cl:slot-value msg 'robotPrimary))
     4 (cl:length (cl:slot-value msg 'robotSecondary))
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AssignTask-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AssignTask-request
    (cl:cons ':header (header msg))
    (cl:cons ':machineName (machineName msg))
    (cl:cons ':robotName (robotName msg))
    (cl:cons ':robotPrimary (robotPrimary msg))
    (cl:cons ':robotSecondary (robotSecondary msg))
    (cl:cons ':taskType (taskType msg))
    (cl:cons ':taskPriority (taskPriority msg))
    (cl:cons ':taskStatus (taskStatus msg))
))
;//! \htmlinclude AssignTask-response.msg.html

(cl:defclass <AssignTask-response> (roslisp-msg-protocol:ros-message)
  ((statusAsignation
    :reader statusAsignation
    :initarg :statusAsignation
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass AssignTask-response (<AssignTask-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AssignTask-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AssignTask-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_fleet_msgs-srv:<AssignTask-response> is deprecated: use kobuki_fleet_msgs-srv:AssignTask-response instead.")))

(cl:ensure-generic-function 'statusAsignation-val :lambda-list '(m))
(cl:defmethod statusAsignation-val ((m <AssignTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:statusAsignation-val is deprecated.  Use kobuki_fleet_msgs-srv:statusAsignation instead.")
  (statusAsignation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AssignTask-response>) ostream)
  "Serializes a message object of type '<AssignTask-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'statusAsignation) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AssignTask-response>) istream)
  "Deserializes a message object of type '<AssignTask-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'statusAsignation) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AssignTask-response>)))
  "Returns string type for a service object of type '<AssignTask-response>"
  "kobuki_fleet_msgs/AssignTaskResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssignTask-response)))
  "Returns string type for a service object of type 'AssignTask-response"
  "kobuki_fleet_msgs/AssignTaskResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AssignTask-response>)))
  "Returns md5sum for a message object of type '<AssignTask-response>"
  "b2e00537ad9afaf702715f57966af958")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AssignTask-response)))
  "Returns md5sum for a message object of type 'AssignTask-response"
  "b2e00537ad9afaf702715f57966af958")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AssignTask-response>)))
  "Returns full string definition for message of type '<AssignTask-response>"
  (cl:format cl:nil "~%std_msgs/Bool statusAsignation~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AssignTask-response)))
  "Returns full string definition for message of type 'AssignTask-response"
  (cl:format cl:nil "~%std_msgs/Bool statusAsignation~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AssignTask-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'statusAsignation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AssignTask-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AssignTask-response
    (cl:cons ':statusAsignation (statusAsignation msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AssignTask)))
  'AssignTask-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AssignTask)))
  'AssignTask-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssignTask)))
  "Returns string type for a service object of type '<AssignTask>"
  "kobuki_fleet_msgs/AssignTask")