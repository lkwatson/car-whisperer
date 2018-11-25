; Auto-generated. Do not edit!


(cl:in-package kobuki_fleet_msgs-msg)


;//! \htmlinclude StateMachineStat.msg.html

(cl:defclass <StateMachineStat> (roslisp-msg-protocol:ros-message)
  ((current_state
    :reader current_state
    :initarg :current_state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass StateMachineStat (<StateMachineStat>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StateMachineStat>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StateMachineStat)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_fleet_msgs-msg:<StateMachineStat> is deprecated: use kobuki_fleet_msgs-msg:StateMachineStat instead.")))

(cl:ensure-generic-function 'current_state-val :lambda-list '(m))
(cl:defmethod current_state-val ((m <StateMachineStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:current_state-val is deprecated.  Use kobuki_fleet_msgs-msg:current_state instead.")
  (current_state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<StateMachineStat>)))
    "Constants for message type '<StateMachineStat>"
  '((:INIT . 0)
    (:IDLE . 1)
    (:NEXT . 2)
    (:DRIVE . 3)
    (:ERROR . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'StateMachineStat)))
    "Constants for message type 'StateMachineStat"
  '((:INIT . 0)
    (:IDLE . 1)
    (:NEXT . 2)
    (:DRIVE . 3)
    (:ERROR . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StateMachineStat>) ostream)
  "Serializes a message object of type '<StateMachineStat>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StateMachineStat>) istream)
  "Deserializes a message object of type '<StateMachineStat>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StateMachineStat>)))
  "Returns string type for a message object of type '<StateMachineStat>"
  "kobuki_fleet_msgs/StateMachineStat")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StateMachineStat)))
  "Returns string type for a message object of type 'StateMachineStat"
  "kobuki_fleet_msgs/StateMachineStat")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StateMachineStat>)))
  "Returns md5sum for a message object of type '<StateMachineStat>"
  "43d9bd846be30acf07699d2030487694")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StateMachineStat)))
  "Returns md5sum for a message object of type 'StateMachineStat"
  "43d9bd846be30acf07699d2030487694")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StateMachineStat>)))
  "Returns full string definition for message of type '<StateMachineStat>"
  (cl:format cl:nil "uint16 INIT=0~%uint16 IDLE=1~%uint16 NEXT=2~%uint16 DRIVE=3~%uint16 ERROR=4~%uint16 current_state~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StateMachineStat)))
  "Returns full string definition for message of type 'StateMachineStat"
  (cl:format cl:nil "uint16 INIT=0~%uint16 IDLE=1~%uint16 NEXT=2~%uint16 DRIVE=3~%uint16 ERROR=4~%uint16 current_state~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StateMachineStat>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StateMachineStat>))
  "Converts a ROS message object to a list"
  (cl:list 'StateMachineStat
    (cl:cons ':current_state (current_state msg))
))
