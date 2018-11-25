; Auto-generated. Do not edit!


(cl:in-package neocortec-msg)


;//! \htmlinclude neocortecData.msg.html

(cl:defclass <neocortecData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (nodeId
    :reader nodeId
    :initarg :nodeId
    :type cl:fixnum
    :initform 0)
   (port
    :reader port
    :initarg :port
    :type cl:fixnum
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass neocortecData (<neocortecData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <neocortecData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'neocortecData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name neocortec-msg:<neocortecData> is deprecated: use neocortec-msg:neocortecData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <neocortecData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neocortec-msg:header-val is deprecated.  Use neocortec-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'nodeId-val :lambda-list '(m))
(cl:defmethod nodeId-val ((m <neocortecData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neocortec-msg:nodeId-val is deprecated.  Use neocortec-msg:nodeId instead.")
  (nodeId m))

(cl:ensure-generic-function 'port-val :lambda-list '(m))
(cl:defmethod port-val ((m <neocortecData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neocortec-msg:port-val is deprecated.  Use neocortec-msg:port instead.")
  (port m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <neocortecData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neocortec-msg:data-val is deprecated.  Use neocortec-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <neocortecData>) ostream)
  "Serializes a message object of type '<neocortecData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nodeId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'port)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <neocortecData>) istream)
  "Deserializes a message object of type '<neocortecData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nodeId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'port)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<neocortecData>)))
  "Returns string type for a message object of type '<neocortecData>"
  "neocortec/neocortecData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'neocortecData)))
  "Returns string type for a message object of type 'neocortecData"
  "neocortec/neocortecData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<neocortecData>)))
  "Returns md5sum for a message object of type '<neocortecData>"
  "a1087d485e7bd2ac6b2e70a18ad6fa12")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'neocortecData)))
  "Returns md5sum for a message object of type 'neocortecData"
  "a1087d485e7bd2ac6b2e70a18ad6fa12")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<neocortecData>)))
  "Returns full string definition for message of type '<neocortecData>"
  (cl:format cl:nil "Header header~%uint8 nodeId~%uint8 port~%uint8[] data~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'neocortecData)))
  "Returns full string definition for message of type 'neocortecData"
  (cl:format cl:nil "Header header~%uint8 nodeId~%uint8 port~%uint8[] data~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <neocortecData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <neocortecData>))
  "Converts a ROS message object to a list"
  (cl:list 'neocortecData
    (cl:cons ':header (header msg))
    (cl:cons ':nodeId (nodeId msg))
    (cl:cons ':port (port msg))
    (cl:cons ':data (data msg))
))
