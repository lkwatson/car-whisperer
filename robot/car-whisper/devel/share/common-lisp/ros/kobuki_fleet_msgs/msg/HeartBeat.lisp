; Auto-generated. Do not edit!


(cl:in-package kobuki_fleet_msgs-msg)


;//! \htmlinclude HeartBeat.msg.html

(cl:defclass <HeartBeat> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (rid
    :reader rid
    :initarg :rid
    :type cl:fixnum
    :initform 0)
   (robotName
    :reader robotName
    :initarg :robotName
    :type cl:string
    :initform "")
   (nid
    :reader nid
    :initarg :nid
    :type cl:fixnum
    :initform 0)
   (rob_status
    :reader rob_status
    :initarg :rob_status
    :type cl:fixnum
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (nchb
    :reader nchb
    :initarg :nchb
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass HeartBeat (<HeartBeat>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HeartBeat>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HeartBeat)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_fleet_msgs-msg:<HeartBeat> is deprecated: use kobuki_fleet_msgs-msg:HeartBeat instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HeartBeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:header-val is deprecated.  Use kobuki_fleet_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'rid-val :lambda-list '(m))
(cl:defmethod rid-val ((m <HeartBeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:rid-val is deprecated.  Use kobuki_fleet_msgs-msg:rid instead.")
  (rid m))

(cl:ensure-generic-function 'robotName-val :lambda-list '(m))
(cl:defmethod robotName-val ((m <HeartBeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:robotName-val is deprecated.  Use kobuki_fleet_msgs-msg:robotName instead.")
  (robotName m))

(cl:ensure-generic-function 'nid-val :lambda-list '(m))
(cl:defmethod nid-val ((m <HeartBeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:nid-val is deprecated.  Use kobuki_fleet_msgs-msg:nid instead.")
  (nid m))

(cl:ensure-generic-function 'rob_status-val :lambda-list '(m))
(cl:defmethod rob_status-val ((m <HeartBeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:rob_status-val is deprecated.  Use kobuki_fleet_msgs-msg:rob_status instead.")
  (rob_status m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <HeartBeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:x-val is deprecated.  Use kobuki_fleet_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <HeartBeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:y-val is deprecated.  Use kobuki_fleet_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <HeartBeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:yaw-val is deprecated.  Use kobuki_fleet_msgs-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'nchb-val :lambda-list '(m))
(cl:defmethod nchb-val ((m <HeartBeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:nchb-val is deprecated.  Use kobuki_fleet_msgs-msg:nchb instead.")
  (nchb m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HeartBeat>)))
    "Constants for message type '<HeartBeat>"
  '((:OK . 0)
    (:DISCONNECTED . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HeartBeat)))
    "Constants for message type 'HeartBeat"
  '((:OK . 0)
    (:DISCONNECTED . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HeartBeat>) ostream)
  "Serializes a message object of type '<HeartBeat>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rid)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robotName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robotName))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rob_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rob_status)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'nchb) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HeartBeat>) istream)
  "Deserializes a message object of type '<HeartBeat>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rid)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robotName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robotName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rob_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rob_status)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'nchb) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HeartBeat>)))
  "Returns string type for a message object of type '<HeartBeat>"
  "kobuki_fleet_msgs/HeartBeat")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeartBeat)))
  "Returns string type for a message object of type 'HeartBeat"
  "kobuki_fleet_msgs/HeartBeat")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HeartBeat>)))
  "Returns md5sum for a message object of type '<HeartBeat>"
  "794c9b46052936d5a36dc70960dcf829")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HeartBeat)))
  "Returns md5sum for a message object of type 'HeartBeat"
  "794c9b46052936d5a36dc70960dcf829")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HeartBeat>)))
  "Returns full string definition for message of type '<HeartBeat>"
  (cl:format cl:nil "Header header~%uint16 rid~%string robotName~%uint16 nid~%uint16 rob_status~%uint16 OK=0~%uint16 DISCONNECTED=1~%float32 x~%float32 y~%float32 yaw~%bool nchb~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HeartBeat)))
  "Returns full string definition for message of type 'HeartBeat"
  (cl:format cl:nil "Header header~%uint16 rid~%string robotName~%uint16 nid~%uint16 rob_status~%uint16 OK=0~%uint16 DISCONNECTED=1~%float32 x~%float32 y~%float32 yaw~%bool nchb~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HeartBeat>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     4 (cl:length (cl:slot-value msg 'robotName))
     2
     2
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HeartBeat>))
  "Converts a ROS message object to a list"
  (cl:list 'HeartBeat
    (cl:cons ':header (header msg))
    (cl:cons ':rid (rid msg))
    (cl:cons ':robotName (robotName msg))
    (cl:cons ':nid (nid msg))
    (cl:cons ':rob_status (rob_status msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':nchb (nchb msg))
))
