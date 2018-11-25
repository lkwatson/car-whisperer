; Auto-generated. Do not edit!


(cl:in-package kobuki_fleet_msgs-msg)


;//! \htmlinclude HeartBeatList.msg.html

(cl:defclass <HeartBeatList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (heartBeatList
    :reader heartBeatList
    :initarg :heartBeatList
    :type (cl:vector kobuki_fleet_msgs-msg:HeartBeat)
   :initform (cl:make-array 0 :element-type 'kobuki_fleet_msgs-msg:HeartBeat :initial-element (cl:make-instance 'kobuki_fleet_msgs-msg:HeartBeat))))
)

(cl:defclass HeartBeatList (<HeartBeatList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HeartBeatList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HeartBeatList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_fleet_msgs-msg:<HeartBeatList> is deprecated: use kobuki_fleet_msgs-msg:HeartBeatList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HeartBeatList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:header-val is deprecated.  Use kobuki_fleet_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'heartBeatList-val :lambda-list '(m))
(cl:defmethod heartBeatList-val ((m <HeartBeatList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:heartBeatList-val is deprecated.  Use kobuki_fleet_msgs-msg:heartBeatList instead.")
  (heartBeatList m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HeartBeatList>) ostream)
  "Serializes a message object of type '<HeartBeatList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'heartBeatList))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'heartBeatList))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HeartBeatList>) istream)
  "Deserializes a message object of type '<HeartBeatList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'heartBeatList) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'heartBeatList)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'kobuki_fleet_msgs-msg:HeartBeat))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HeartBeatList>)))
  "Returns string type for a message object of type '<HeartBeatList>"
  "kobuki_fleet_msgs/HeartBeatList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeartBeatList)))
  "Returns string type for a message object of type 'HeartBeatList"
  "kobuki_fleet_msgs/HeartBeatList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HeartBeatList>)))
  "Returns md5sum for a message object of type '<HeartBeatList>"
  "5cfe3abb0abbedaf5b0363e31ac66a80")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HeartBeatList)))
  "Returns md5sum for a message object of type 'HeartBeatList"
  "5cfe3abb0abbedaf5b0363e31ac66a80")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HeartBeatList>)))
  "Returns full string definition for message of type '<HeartBeatList>"
  (cl:format cl:nil "Header header~%kobuki_fleet_msgs/HeartBeat[] heartBeatList~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: kobuki_fleet_msgs/HeartBeat~%Header header~%uint16 rid~%string robotName~%uint16 nid~%uint16 rob_status~%uint16 OK=0~%uint16 DISCONNECTED=1~%float32 x~%float32 y~%float32 yaw~%bool nchb~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HeartBeatList)))
  "Returns full string definition for message of type 'HeartBeatList"
  (cl:format cl:nil "Header header~%kobuki_fleet_msgs/HeartBeat[] heartBeatList~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: kobuki_fleet_msgs/HeartBeat~%Header header~%uint16 rid~%string robotName~%uint16 nid~%uint16 rob_status~%uint16 OK=0~%uint16 DISCONNECTED=1~%float32 x~%float32 y~%float32 yaw~%bool nchb~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HeartBeatList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'heartBeatList) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HeartBeatList>))
  "Converts a ROS message object to a list"
  (cl:list 'HeartBeatList
    (cl:cons ':header (header msg))
    (cl:cons ':heartBeatList (heartBeatList msg))
))
