; Auto-generated. Do not edit!


(cl:in-package kobuki_fleet_msgs-msg)


;//! \htmlinclude NewTask.msg.html

(cl:defclass <NewTask> (roslisp-msg-protocol:ros-message)
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
   (destinationName
    :reader destinationName
    :initarg :destinationName
    :type cl:string
    :initform "")
   (taskDeadline
    :reader taskDeadline
    :initarg :taskDeadline
    :type cl:fixnum
    :initform 0)
   (taskType
    :reader taskType
    :initarg :taskType
    :type cl:fixnum
    :initform 0)
   (taskStatus
    :reader taskStatus
    :initarg :taskStatus
    :type cl:fixnum
    :initform 0)
   (taskMaterialType
    :reader taskMaterialType
    :initarg :taskMaterialType
    :type cl:fixnum
    :initform 0))
)

(cl:defclass NewTask (<NewTask>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NewTask>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NewTask)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_fleet_msgs-msg:<NewTask> is deprecated: use kobuki_fleet_msgs-msg:NewTask instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NewTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:header-val is deprecated.  Use kobuki_fleet_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'machineName-val :lambda-list '(m))
(cl:defmethod machineName-val ((m <NewTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:machineName-val is deprecated.  Use kobuki_fleet_msgs-msg:machineName instead.")
  (machineName m))

(cl:ensure-generic-function 'robotName-val :lambda-list '(m))
(cl:defmethod robotName-val ((m <NewTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:robotName-val is deprecated.  Use kobuki_fleet_msgs-msg:robotName instead.")
  (robotName m))

(cl:ensure-generic-function 'destinationName-val :lambda-list '(m))
(cl:defmethod destinationName-val ((m <NewTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:destinationName-val is deprecated.  Use kobuki_fleet_msgs-msg:destinationName instead.")
  (destinationName m))

(cl:ensure-generic-function 'taskDeadline-val :lambda-list '(m))
(cl:defmethod taskDeadline-val ((m <NewTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:taskDeadline-val is deprecated.  Use kobuki_fleet_msgs-msg:taskDeadline instead.")
  (taskDeadline m))

(cl:ensure-generic-function 'taskType-val :lambda-list '(m))
(cl:defmethod taskType-val ((m <NewTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:taskType-val is deprecated.  Use kobuki_fleet_msgs-msg:taskType instead.")
  (taskType m))

(cl:ensure-generic-function 'taskStatus-val :lambda-list '(m))
(cl:defmethod taskStatus-val ((m <NewTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:taskStatus-val is deprecated.  Use kobuki_fleet_msgs-msg:taskStatus instead.")
  (taskStatus m))

(cl:ensure-generic-function 'taskMaterialType-val :lambda-list '(m))
(cl:defmethod taskMaterialType-val ((m <NewTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:taskMaterialType-val is deprecated.  Use kobuki_fleet_msgs-msg:taskMaterialType instead.")
  (taskMaterialType m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NewTask>)))
    "Constants for message type '<NewTask>"
  '((:REPLENISHMENT . 1)
    (:DELIVERY . 2)
    (:GOTO . 3)
    (:CALL . 4)
    (:OPEN . 0)
    (:WORKING . 1)
    (:FINISHED . 2)
    (:ERROR . 3)
    (:CANCELLED . 4)
    (:TYPEA . 1)
    (:TYPEB . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NewTask)))
    "Constants for message type 'NewTask"
  '((:REPLENISHMENT . 1)
    (:DELIVERY . 2)
    (:GOTO . 3)
    (:CALL . 4)
    (:OPEN . 0)
    (:WORKING . 1)
    (:FINISHED . 2)
    (:ERROR . 3)
    (:CANCELLED . 4)
    (:TYPEA . 1)
    (:TYPEB . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NewTask>) ostream)
  "Serializes a message object of type '<NewTask>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'destinationName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'destinationName))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskDeadline)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskDeadline)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskMaterialType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskMaterialType)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NewTask>) istream)
  "Deserializes a message object of type '<NewTask>"
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
      (cl:setf (cl:slot-value msg 'destinationName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'destinationName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskDeadline)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskDeadline)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskMaterialType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskMaterialType)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NewTask>)))
  "Returns string type for a message object of type '<NewTask>"
  "kobuki_fleet_msgs/NewTask")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NewTask)))
  "Returns string type for a message object of type 'NewTask"
  "kobuki_fleet_msgs/NewTask")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NewTask>)))
  "Returns md5sum for a message object of type '<NewTask>"
  "55c9514b00d94f83e82ab03e265be429")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NewTask)))
  "Returns md5sum for a message object of type 'NewTask"
  "55c9514b00d94f83e82ab03e265be429")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NewTask>)))
  "Returns full string definition for message of type '<NewTask>"
  (cl:format cl:nil "Header header~%string machineName~%string robotName~%string destinationName~%uint16 taskDeadline    ~%~%uint16 REPLENISHMENT=1~%uint16 DELIVERY=2~%uint16 GOTO=3~%uint16 CALL=4~%uint16 taskType     ~%~%uint16 taskStatus~%uint16 OPEN=0~%uint16 WORKING=1~%uint16 FINISHED=2~%uint16 ERROR=3~%uint16 CANCELLED=4~%~%uint16 taskMaterialType~%uint16 typeA=1~%uint16 typeB=2~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NewTask)))
  "Returns full string definition for message of type 'NewTask"
  (cl:format cl:nil "Header header~%string machineName~%string robotName~%string destinationName~%uint16 taskDeadline    ~%~%uint16 REPLENISHMENT=1~%uint16 DELIVERY=2~%uint16 GOTO=3~%uint16 CALL=4~%uint16 taskType     ~%~%uint16 taskStatus~%uint16 OPEN=0~%uint16 WORKING=1~%uint16 FINISHED=2~%uint16 ERROR=3~%uint16 CANCELLED=4~%~%uint16 taskMaterialType~%uint16 typeA=1~%uint16 typeB=2~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NewTask>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'machineName))
     4 (cl:length (cl:slot-value msg 'robotName))
     4 (cl:length (cl:slot-value msg 'destinationName))
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NewTask>))
  "Converts a ROS message object to a list"
  (cl:list 'NewTask
    (cl:cons ':header (header msg))
    (cl:cons ':machineName (machineName msg))
    (cl:cons ':robotName (robotName msg))
    (cl:cons ':destinationName (destinationName msg))
    (cl:cons ':taskDeadline (taskDeadline msg))
    (cl:cons ':taskType (taskType msg))
    (cl:cons ':taskStatus (taskStatus msg))
    (cl:cons ':taskMaterialType (taskMaterialType msg))
))
