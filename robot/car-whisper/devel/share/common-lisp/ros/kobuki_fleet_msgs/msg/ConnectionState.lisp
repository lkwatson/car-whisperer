; Auto-generated. Do not edit!


(cl:in-package kobuki_fleet_msgs-msg)


;//! \htmlinclude ConnectionState.msg.html

(cl:defclass <ConnectionState> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ConnectionState (<ConnectionState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConnectionState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConnectionState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_fleet_msgs-msg:<ConnectionState> is deprecated: use kobuki_fleet_msgs-msg:ConnectionState instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ConnectionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:state-val is deprecated.  Use kobuki_fleet_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ConnectionState>)))
    "Constants for message type '<ConnectionState>"
  '((:WIFI . 0)
    (:NEOCORTEC . 1)
    (:DISCONNECTED . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ConnectionState)))
    "Constants for message type 'ConnectionState"
  '((:WIFI . 0)
    (:NEOCORTEC . 1)
    (:DISCONNECTED . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConnectionState>) ostream)
  "Serializes a message object of type '<ConnectionState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConnectionState>) istream)
  "Deserializes a message object of type '<ConnectionState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConnectionState>)))
  "Returns string type for a message object of type '<ConnectionState>"
  "kobuki_fleet_msgs/ConnectionState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConnectionState)))
  "Returns string type for a message object of type 'ConnectionState"
  "kobuki_fleet_msgs/ConnectionState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConnectionState>)))
  "Returns md5sum for a message object of type '<ConnectionState>"
  "018c1b9d0899955a1f2147e56051f53b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConnectionState)))
  "Returns md5sum for a message object of type 'ConnectionState"
  "018c1b9d0899955a1f2147e56051f53b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConnectionState>)))
  "Returns full string definition for message of type '<ConnectionState>"
  (cl:format cl:nil "uint8 state~%uint8 WIFI 			= 0~%uint8 NEOCORTEC   	= 1~%uint8 DISCONNECTED 	= 2~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConnectionState)))
  "Returns full string definition for message of type 'ConnectionState"
  (cl:format cl:nil "uint8 state~%uint8 WIFI 			= 0~%uint8 NEOCORTEC   	= 1~%uint8 DISCONNECTED 	= 2~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConnectionState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConnectionState>))
  "Converts a ROS message object to a list"
  (cl:list 'ConnectionState
    (cl:cons ':state (state msg))
))
