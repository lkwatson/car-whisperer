; Auto-generated. Do not edit!


(cl:in-package kobuki_fleet_msgs-msg)


;//! \htmlinclude TaskList.msg.html

(cl:defclass <TaskList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (tasks
    :reader tasks
    :initarg :tasks
    :type (cl:vector kobuki_fleet_msgs-msg:Task)
   :initform (cl:make-array 0 :element-type 'kobuki_fleet_msgs-msg:Task :initial-element (cl:make-instance 'kobuki_fleet_msgs-msg:Task))))
)

(cl:defclass TaskList (<TaskList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_fleet_msgs-msg:<TaskList> is deprecated: use kobuki_fleet_msgs-msg:TaskList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TaskList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:header-val is deprecated.  Use kobuki_fleet_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tasks-val :lambda-list '(m))
(cl:defmethod tasks-val ((m <TaskList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:tasks-val is deprecated.  Use kobuki_fleet_msgs-msg:tasks instead.")
  (tasks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskList>) ostream)
  "Serializes a message object of type '<TaskList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tasks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'tasks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskList>) istream)
  "Deserializes a message object of type '<TaskList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tasks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tasks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'kobuki_fleet_msgs-msg:Task))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskList>)))
  "Returns string type for a message object of type '<TaskList>"
  "kobuki_fleet_msgs/TaskList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskList)))
  "Returns string type for a message object of type 'TaskList"
  "kobuki_fleet_msgs/TaskList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskList>)))
  "Returns md5sum for a message object of type '<TaskList>"
  "75349dde316a6d0dae7d4082ce8df881")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskList)))
  "Returns md5sum for a message object of type 'TaskList"
  "75349dde316a6d0dae7d4082ce8df881")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskList>)))
  "Returns full string definition for message of type '<TaskList>"
  (cl:format cl:nil "Header header~%kobuki_fleet_msgs/Task[] tasks~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: kobuki_fleet_msgs/Task~%Header header~%string machineName~%string robotName~%string robotPrimary~%string robotSecondary~%string destinationName~%~%string srcName~%geometry_msgs/Pose robotPose~%geometry_msgs/Pose machinePose~%geometry_msgs/Pose srcPose~%geometry_msgs/Pose destinationPose~%~%uint16 OPEN=0~%uint16 WORKING=1~%uint16 FINISHED=2~%uint16 ERROR=3~%uint16 CANCELLED=4~%uint16 ROBOTFINISHED=5~%uint16 IDLE=6~%uint16 taskStatus~%~%uint16 REPLENISHMENT=1~%uint16 DELIVERY=2~%uint16 GOTO=3~%uint16 CALL=4~%uint16 taskType~%~%uint16 typeA=1~%uint16 typeB=2~%uint16 taskMaterialType~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskList)))
  "Returns full string definition for message of type 'TaskList"
  (cl:format cl:nil "Header header~%kobuki_fleet_msgs/Task[] tasks~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: kobuki_fleet_msgs/Task~%Header header~%string machineName~%string robotName~%string robotPrimary~%string robotSecondary~%string destinationName~%~%string srcName~%geometry_msgs/Pose robotPose~%geometry_msgs/Pose machinePose~%geometry_msgs/Pose srcPose~%geometry_msgs/Pose destinationPose~%~%uint16 OPEN=0~%uint16 WORKING=1~%uint16 FINISHED=2~%uint16 ERROR=3~%uint16 CANCELLED=4~%uint16 ROBOTFINISHED=5~%uint16 IDLE=6~%uint16 taskStatus~%~%uint16 REPLENISHMENT=1~%uint16 DELIVERY=2~%uint16 GOTO=3~%uint16 CALL=4~%uint16 taskType~%~%uint16 typeA=1~%uint16 typeB=2~%uint16 taskMaterialType~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tasks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskList>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskList
    (cl:cons ':header (header msg))
    (cl:cons ':tasks (tasks msg))
))
