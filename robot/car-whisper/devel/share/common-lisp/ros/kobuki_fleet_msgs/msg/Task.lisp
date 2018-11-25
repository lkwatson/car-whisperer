; Auto-generated. Do not edit!


(cl:in-package kobuki_fleet_msgs-msg)


;//! \htmlinclude Task.msg.html

(cl:defclass <Task> (roslisp-msg-protocol:ros-message)
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
   (destinationName
    :reader destinationName
    :initarg :destinationName
    :type cl:string
    :initform "")
   (srcName
    :reader srcName
    :initarg :srcName
    :type cl:string
    :initform "")
   (robotPose
    :reader robotPose
    :initarg :robotPose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (machinePose
    :reader machinePose
    :initarg :machinePose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (srcPose
    :reader srcPose
    :initarg :srcPose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (destinationPose
    :reader destinationPose
    :initarg :destinationPose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (taskStatus
    :reader taskStatus
    :initarg :taskStatus
    :type cl:fixnum
    :initform 0)
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

(cl:defclass Task (<Task>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Task>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Task)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_fleet_msgs-msg:<Task> is deprecated: use kobuki_fleet_msgs-msg:Task instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:header-val is deprecated.  Use kobuki_fleet_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'machineName-val :lambda-list '(m))
(cl:defmethod machineName-val ((m <Task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:machineName-val is deprecated.  Use kobuki_fleet_msgs-msg:machineName instead.")
  (machineName m))

(cl:ensure-generic-function 'robotName-val :lambda-list '(m))
(cl:defmethod robotName-val ((m <Task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:robotName-val is deprecated.  Use kobuki_fleet_msgs-msg:robotName instead.")
  (robotName m))

(cl:ensure-generic-function 'robotPrimary-val :lambda-list '(m))
(cl:defmethod robotPrimary-val ((m <Task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:robotPrimary-val is deprecated.  Use kobuki_fleet_msgs-msg:robotPrimary instead.")
  (robotPrimary m))

(cl:ensure-generic-function 'robotSecondary-val :lambda-list '(m))
(cl:defmethod robotSecondary-val ((m <Task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:robotSecondary-val is deprecated.  Use kobuki_fleet_msgs-msg:robotSecondary instead.")
  (robotSecondary m))

(cl:ensure-generic-function 'destinationName-val :lambda-list '(m))
(cl:defmethod destinationName-val ((m <Task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:destinationName-val is deprecated.  Use kobuki_fleet_msgs-msg:destinationName instead.")
  (destinationName m))

(cl:ensure-generic-function 'srcName-val :lambda-list '(m))
(cl:defmethod srcName-val ((m <Task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:srcName-val is deprecated.  Use kobuki_fleet_msgs-msg:srcName instead.")
  (srcName m))

(cl:ensure-generic-function 'robotPose-val :lambda-list '(m))
(cl:defmethod robotPose-val ((m <Task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:robotPose-val is deprecated.  Use kobuki_fleet_msgs-msg:robotPose instead.")
  (robotPose m))

(cl:ensure-generic-function 'machinePose-val :lambda-list '(m))
(cl:defmethod machinePose-val ((m <Task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:machinePose-val is deprecated.  Use kobuki_fleet_msgs-msg:machinePose instead.")
  (machinePose m))

(cl:ensure-generic-function 'srcPose-val :lambda-list '(m))
(cl:defmethod srcPose-val ((m <Task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:srcPose-val is deprecated.  Use kobuki_fleet_msgs-msg:srcPose instead.")
  (srcPose m))

(cl:ensure-generic-function 'destinationPose-val :lambda-list '(m))
(cl:defmethod destinationPose-val ((m <Task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:destinationPose-val is deprecated.  Use kobuki_fleet_msgs-msg:destinationPose instead.")
  (destinationPose m))

(cl:ensure-generic-function 'taskStatus-val :lambda-list '(m))
(cl:defmethod taskStatus-val ((m <Task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:taskStatus-val is deprecated.  Use kobuki_fleet_msgs-msg:taskStatus instead.")
  (taskStatus m))

(cl:ensure-generic-function 'taskType-val :lambda-list '(m))
(cl:defmethod taskType-val ((m <Task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:taskType-val is deprecated.  Use kobuki_fleet_msgs-msg:taskType instead.")
  (taskType m))

(cl:ensure-generic-function 'taskMaterialType-val :lambda-list '(m))
(cl:defmethod taskMaterialType-val ((m <Task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:taskMaterialType-val is deprecated.  Use kobuki_fleet_msgs-msg:taskMaterialType instead.")
  (taskMaterialType m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Task>)))
    "Constants for message type '<Task>"
  '((:OPEN . 0)
    (:WORKING . 1)
    (:FINISHED . 2)
    (:ERROR . 3)
    (:CANCELLED . 4)
    (:ROBOTFINISHED . 5)
    (:IDLE . 6)
    (:REPLENISHMENT . 1)
    (:DELIVERY . 2)
    (:GOTO . 3)
    (:CALL . 4)
    (:TYPEA . 1)
    (:TYPEB . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Task)))
    "Constants for message type 'Task"
  '((:OPEN . 0)
    (:WORKING . 1)
    (:FINISHED . 2)
    (:ERROR . 3)
    (:CANCELLED . 4)
    (:ROBOTFINISHED . 5)
    (:IDLE . 6)
    (:REPLENISHMENT . 1)
    (:DELIVERY . 2)
    (:GOTO . 3)
    (:CALL . 4)
    (:TYPEA . 1)
    (:TYPEB . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Task>) ostream)
  "Serializes a message object of type '<Task>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'destinationName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'destinationName))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'srcName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'srcName))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robotPose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'machinePose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'srcPose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'destinationPose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskMaterialType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskMaterialType)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Task>) istream)
  "Deserializes a message object of type '<Task>"
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
      (cl:setf (cl:slot-value msg 'srcName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'srcName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robotPose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'machinePose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'srcPose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'destinationPose) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskMaterialType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskMaterialType)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Task>)))
  "Returns string type for a message object of type '<Task>"
  "kobuki_fleet_msgs/Task")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Task)))
  "Returns string type for a message object of type 'Task"
  "kobuki_fleet_msgs/Task")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Task>)))
  "Returns md5sum for a message object of type '<Task>"
  "62acc2d4ffe704581b02423c663c6419")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Task)))
  "Returns md5sum for a message object of type 'Task"
  "62acc2d4ffe704581b02423c663c6419")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Task>)))
  "Returns full string definition for message of type '<Task>"
  (cl:format cl:nil "Header header~%string machineName~%string robotName~%string robotPrimary~%string robotSecondary~%string destinationName~%~%string srcName~%geometry_msgs/Pose robotPose~%geometry_msgs/Pose machinePose~%geometry_msgs/Pose srcPose~%geometry_msgs/Pose destinationPose~%~%uint16 OPEN=0~%uint16 WORKING=1~%uint16 FINISHED=2~%uint16 ERROR=3~%uint16 CANCELLED=4~%uint16 ROBOTFINISHED=5~%uint16 IDLE=6~%uint16 taskStatus~%~%uint16 REPLENISHMENT=1~%uint16 DELIVERY=2~%uint16 GOTO=3~%uint16 CALL=4~%uint16 taskType~%~%uint16 typeA=1~%uint16 typeB=2~%uint16 taskMaterialType~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Task)))
  "Returns full string definition for message of type 'Task"
  (cl:format cl:nil "Header header~%string machineName~%string robotName~%string robotPrimary~%string robotSecondary~%string destinationName~%~%string srcName~%geometry_msgs/Pose robotPose~%geometry_msgs/Pose machinePose~%geometry_msgs/Pose srcPose~%geometry_msgs/Pose destinationPose~%~%uint16 OPEN=0~%uint16 WORKING=1~%uint16 FINISHED=2~%uint16 ERROR=3~%uint16 CANCELLED=4~%uint16 ROBOTFINISHED=5~%uint16 IDLE=6~%uint16 taskStatus~%~%uint16 REPLENISHMENT=1~%uint16 DELIVERY=2~%uint16 GOTO=3~%uint16 CALL=4~%uint16 taskType~%~%uint16 typeA=1~%uint16 typeB=2~%uint16 taskMaterialType~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Task>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'machineName))
     4 (cl:length (cl:slot-value msg 'robotName))
     4 (cl:length (cl:slot-value msg 'robotPrimary))
     4 (cl:length (cl:slot-value msg 'robotSecondary))
     4 (cl:length (cl:slot-value msg 'destinationName))
     4 (cl:length (cl:slot-value msg 'srcName))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robotPose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'machinePose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'srcPose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'destinationPose))
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Task>))
  "Converts a ROS message object to a list"
  (cl:list 'Task
    (cl:cons ':header (header msg))
    (cl:cons ':machineName (machineName msg))
    (cl:cons ':robotName (robotName msg))
    (cl:cons ':robotPrimary (robotPrimary msg))
    (cl:cons ':robotSecondary (robotSecondary msg))
    (cl:cons ':destinationName (destinationName msg))
    (cl:cons ':srcName (srcName msg))
    (cl:cons ':robotPose (robotPose msg))
    (cl:cons ':machinePose (machinePose msg))
    (cl:cons ':srcPose (srcPose msg))
    (cl:cons ':destinationPose (destinationPose msg))
    (cl:cons ':taskStatus (taskStatus msg))
    (cl:cons ':taskType (taskType msg))
    (cl:cons ':taskMaterialType (taskMaterialType msg))
))
