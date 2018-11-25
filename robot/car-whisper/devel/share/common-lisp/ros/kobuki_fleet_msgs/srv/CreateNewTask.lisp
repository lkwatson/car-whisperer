; Auto-generated. Do not edit!


(cl:in-package kobuki_fleet_msgs-srv)


;//! \htmlinclude CreateNewTask-request.msg.html

(cl:defclass <CreateNewTask-request> (roslisp-msg-protocol:ros-message)
  ((destinationName
    :reader destinationName
    :initarg :destinationName
    :type cl:string
    :initform "")
   (robotName
    :reader robotName
    :initarg :robotName
    :type cl:string
    :initform "")
   (taskType
    :reader taskType
    :initarg :taskType
    :type cl:fixnum
    :initform 0)
   (taskMaterialType
    :reader taskMaterialType
    :initarg :taskMaterialType
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CreateNewTask-request (<CreateNewTask-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CreateNewTask-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CreateNewTask-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_fleet_msgs-srv:<CreateNewTask-request> is deprecated: use kobuki_fleet_msgs-srv:CreateNewTask-request instead.")))

(cl:ensure-generic-function 'destinationName-val :lambda-list '(m))
(cl:defmethod destinationName-val ((m <CreateNewTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:destinationName-val is deprecated.  Use kobuki_fleet_msgs-srv:destinationName instead.")
  (destinationName m))

(cl:ensure-generic-function 'robotName-val :lambda-list '(m))
(cl:defmethod robotName-val ((m <CreateNewTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:robotName-val is deprecated.  Use kobuki_fleet_msgs-srv:robotName instead.")
  (robotName m))

(cl:ensure-generic-function 'taskType-val :lambda-list '(m))
(cl:defmethod taskType-val ((m <CreateNewTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:taskType-val is deprecated.  Use kobuki_fleet_msgs-srv:taskType instead.")
  (taskType m))

(cl:ensure-generic-function 'taskMaterialType-val :lambda-list '(m))
(cl:defmethod taskMaterialType-val ((m <CreateNewTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:taskMaterialType-val is deprecated.  Use kobuki_fleet_msgs-srv:taskMaterialType instead.")
  (taskMaterialType m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CreateNewTask-request>)))
    "Constants for message type '<CreateNewTask-request>"
  '((:REPLENISHMENT . 1)
    (:DELIVERY . 2)
    (:GOTO . 3)
    (:CALL . 4)
    (:TYPEA . 1)
    (:TYPEB . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CreateNewTask-request)))
    "Constants for message type 'CreateNewTask-request"
  '((:REPLENISHMENT . 1)
    (:DELIVERY . 2)
    (:GOTO . 3)
    (:CALL . 4)
    (:TYPEA . 1)
    (:TYPEB . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CreateNewTask-request>) ostream)
  "Serializes a message object of type '<CreateNewTask-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'destinationName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'destinationName))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robotName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robotName))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskMaterialType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskMaterialType)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CreateNewTask-request>) istream)
  "Deserializes a message object of type '<CreateNewTask-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'destinationName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'destinationName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robotName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robotName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskMaterialType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskMaterialType)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CreateNewTask-request>)))
  "Returns string type for a service object of type '<CreateNewTask-request>"
  "kobuki_fleet_msgs/CreateNewTaskRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CreateNewTask-request)))
  "Returns string type for a service object of type 'CreateNewTask-request"
  "kobuki_fleet_msgs/CreateNewTaskRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CreateNewTask-request>)))
  "Returns md5sum for a message object of type '<CreateNewTask-request>"
  "fbe5d6e4f29a92d827d682acfefce3c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CreateNewTask-request)))
  "Returns md5sum for a message object of type 'CreateNewTask-request"
  "fbe5d6e4f29a92d827d682acfefce3c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CreateNewTask-request>)))
  "Returns full string definition for message of type '<CreateNewTask-request>"
  (cl:format cl:nil "string destinationName~%string robotName~%~%uint16 REPLENISHMENT=1~%uint16 DELIVERY=2~%uint16 GOTO=3~%uint16 CALL=4~%uint16 taskType~%~%uint16 typeA=1~%uint16 typeB=2~%uint16 taskMaterialType~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CreateNewTask-request)))
  "Returns full string definition for message of type 'CreateNewTask-request"
  (cl:format cl:nil "string destinationName~%string robotName~%~%uint16 REPLENISHMENT=1~%uint16 DELIVERY=2~%uint16 GOTO=3~%uint16 CALL=4~%uint16 taskType~%~%uint16 typeA=1~%uint16 typeB=2~%uint16 taskMaterialType~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CreateNewTask-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'destinationName))
     4 (cl:length (cl:slot-value msg 'robotName))
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CreateNewTask-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CreateNewTask-request
    (cl:cons ':destinationName (destinationName msg))
    (cl:cons ':robotName (robotName msg))
    (cl:cons ':taskType (taskType msg))
    (cl:cons ':taskMaterialType (taskMaterialType msg))
))
;//! \htmlinclude CreateNewTask-response.msg.html

(cl:defclass <CreateNewTask-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CreateNewTask-response (<CreateNewTask-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CreateNewTask-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CreateNewTask-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_fleet_msgs-srv:<CreateNewTask-response> is deprecated: use kobuki_fleet_msgs-srv:CreateNewTask-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CreateNewTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:success-val is deprecated.  Use kobuki_fleet_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CreateNewTask-response>) ostream)
  "Serializes a message object of type '<CreateNewTask-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CreateNewTask-response>) istream)
  "Deserializes a message object of type '<CreateNewTask-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CreateNewTask-response>)))
  "Returns string type for a service object of type '<CreateNewTask-response>"
  "kobuki_fleet_msgs/CreateNewTaskResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CreateNewTask-response)))
  "Returns string type for a service object of type 'CreateNewTask-response"
  "kobuki_fleet_msgs/CreateNewTaskResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CreateNewTask-response>)))
  "Returns md5sum for a message object of type '<CreateNewTask-response>"
  "fbe5d6e4f29a92d827d682acfefce3c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CreateNewTask-response)))
  "Returns md5sum for a message object of type 'CreateNewTask-response"
  "fbe5d6e4f29a92d827d682acfefce3c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CreateNewTask-response>)))
  "Returns full string definition for message of type '<CreateNewTask-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CreateNewTask-response)))
  "Returns full string definition for message of type 'CreateNewTask-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CreateNewTask-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CreateNewTask-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CreateNewTask-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CreateNewTask)))
  'CreateNewTask-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CreateNewTask)))
  'CreateNewTask-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CreateNewTask)))
  "Returns string type for a service object of type '<CreateNewTask>"
  "kobuki_fleet_msgs/CreateNewTask")