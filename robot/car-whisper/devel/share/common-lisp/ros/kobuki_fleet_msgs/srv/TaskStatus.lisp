; Auto-generated. Do not edit!


(cl:in-package kobuki_fleet_msgs-srv)


;//! \htmlinclude TaskStatus-request.msg.html

(cl:defclass <TaskStatus-request> (roslisp-msg-protocol:ros-message)
  ((machineName
    :reader machineName
    :initarg :machineName
    :type cl:string
    :initform "")
   (robotName
    :reader robotName
    :initarg :robotName
    :type cl:string
    :initform "")
   (action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0)
   (taskStatus
    :reader taskStatus
    :initarg :taskStatus
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TaskStatus-request (<TaskStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_fleet_msgs-srv:<TaskStatus-request> is deprecated: use kobuki_fleet_msgs-srv:TaskStatus-request instead.")))

(cl:ensure-generic-function 'machineName-val :lambda-list '(m))
(cl:defmethod machineName-val ((m <TaskStatus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:machineName-val is deprecated.  Use kobuki_fleet_msgs-srv:machineName instead.")
  (machineName m))

(cl:ensure-generic-function 'robotName-val :lambda-list '(m))
(cl:defmethod robotName-val ((m <TaskStatus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:robotName-val is deprecated.  Use kobuki_fleet_msgs-srv:robotName instead.")
  (robotName m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <TaskStatus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:action-val is deprecated.  Use kobuki_fleet_msgs-srv:action instead.")
  (action m))

(cl:ensure-generic-function 'taskStatus-val :lambda-list '(m))
(cl:defmethod taskStatus-val ((m <TaskStatus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:taskStatus-val is deprecated.  Use kobuki_fleet_msgs-srv:taskStatus instead.")
  (taskStatus m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TaskStatus-request>)))
    "Constants for message type '<TaskStatus-request>"
  '((:GET . 0)
    (:SET . 1)
    (:OPEN . 0)
    (:WORKING . 1)
    (:FINISHED . 2)
    (:ERROR . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TaskStatus-request)))
    "Constants for message type 'TaskStatus-request"
  '((:GET . 0)
    (:SET . 1)
    (:OPEN . 0)
    (:WORKING . 1)
    (:FINISHED . 2)
    (:ERROR . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskStatus-request>) ostream)
  "Serializes a message object of type '<TaskStatus-request>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'action)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskStatus)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskStatus-request>) istream)
  "Deserializes a message object of type '<TaskStatus-request>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'action)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskStatus)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskStatus-request>)))
  "Returns string type for a service object of type '<TaskStatus-request>"
  "kobuki_fleet_msgs/TaskStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskStatus-request)))
  "Returns string type for a service object of type 'TaskStatus-request"
  "kobuki_fleet_msgs/TaskStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskStatus-request>)))
  "Returns md5sum for a message object of type '<TaskStatus-request>"
  "eba56b9fb70a8910b0530d928bf1cfc5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskStatus-request)))
  "Returns md5sum for a message object of type 'TaskStatus-request"
  "eba56b9fb70a8910b0530d928bf1cfc5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskStatus-request>)))
  "Returns full string definition for message of type '<TaskStatus-request>"
  (cl:format cl:nil "string machineName~%string robotName~%~%uint16 GET=0~%uint16 SET=1~%uint16 action~%~%uint16 OPEN=0~%uint16 WORKING=1~%uint16 FINISHED=2~%uint16 ERROR=3~%uint16 taskStatus~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskStatus-request)))
  "Returns full string definition for message of type 'TaskStatus-request"
  (cl:format cl:nil "string machineName~%string robotName~%~%uint16 GET=0~%uint16 SET=1~%uint16 action~%~%uint16 OPEN=0~%uint16 WORKING=1~%uint16 FINISHED=2~%uint16 ERROR=3~%uint16 taskStatus~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskStatus-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'machineName))
     4 (cl:length (cl:slot-value msg 'robotName))
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskStatus-request
    (cl:cons ':machineName (machineName msg))
    (cl:cons ':robotName (robotName msg))
    (cl:cons ':action (action msg))
    (cl:cons ':taskStatus (taskStatus msg))
))
;//! \htmlinclude TaskStatus-response.msg.html

(cl:defclass <TaskStatus-response> (roslisp-msg-protocol:ros-message)
  ((taskStatus
    :reader taskStatus
    :initarg :taskStatus
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TaskStatus-response (<TaskStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_fleet_msgs-srv:<TaskStatus-response> is deprecated: use kobuki_fleet_msgs-srv:TaskStatus-response instead.")))

(cl:ensure-generic-function 'taskStatus-val :lambda-list '(m))
(cl:defmethod taskStatus-val ((m <TaskStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:taskStatus-val is deprecated.  Use kobuki_fleet_msgs-srv:taskStatus instead.")
  (taskStatus m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskStatus-response>) ostream)
  "Serializes a message object of type '<TaskStatus-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskStatus)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskStatus-response>) istream)
  "Deserializes a message object of type '<TaskStatus-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskStatus)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskStatus-response>)))
  "Returns string type for a service object of type '<TaskStatus-response>"
  "kobuki_fleet_msgs/TaskStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskStatus-response)))
  "Returns string type for a service object of type 'TaskStatus-response"
  "kobuki_fleet_msgs/TaskStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskStatus-response>)))
  "Returns md5sum for a message object of type '<TaskStatus-response>"
  "eba56b9fb70a8910b0530d928bf1cfc5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskStatus-response)))
  "Returns md5sum for a message object of type 'TaskStatus-response"
  "eba56b9fb70a8910b0530d928bf1cfc5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskStatus-response>)))
  "Returns full string definition for message of type '<TaskStatus-response>"
  (cl:format cl:nil "uint16 taskStatus~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskStatus-response)))
  "Returns full string definition for message of type 'TaskStatus-response"
  (cl:format cl:nil "uint16 taskStatus~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskStatus-response>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskStatus-response
    (cl:cons ':taskStatus (taskStatus msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TaskStatus)))
  'TaskStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TaskStatus)))
  'TaskStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskStatus)))
  "Returns string type for a service object of type '<TaskStatus>"
  "kobuki_fleet_msgs/TaskStatus")