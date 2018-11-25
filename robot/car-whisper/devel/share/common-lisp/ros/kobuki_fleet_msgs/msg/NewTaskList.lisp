; Auto-generated. Do not edit!


(cl:in-package kobuki_fleet_msgs-msg)


;//! \htmlinclude NewTaskList.msg.html

(cl:defclass <NewTaskList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (newTasks
    :reader newTasks
    :initarg :newTasks
    :type (cl:vector kobuki_fleet_msgs-msg:NewTask)
   :initform (cl:make-array 0 :element-type 'kobuki_fleet_msgs-msg:NewTask :initial-element (cl:make-instance 'kobuki_fleet_msgs-msg:NewTask))))
)

(cl:defclass NewTaskList (<NewTaskList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NewTaskList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NewTaskList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_fleet_msgs-msg:<NewTaskList> is deprecated: use kobuki_fleet_msgs-msg:NewTaskList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NewTaskList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:header-val is deprecated.  Use kobuki_fleet_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'newTasks-val :lambda-list '(m))
(cl:defmethod newTasks-val ((m <NewTaskList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:newTasks-val is deprecated.  Use kobuki_fleet_msgs-msg:newTasks instead.")
  (newTasks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NewTaskList>) ostream)
  "Serializes a message object of type '<NewTaskList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'newTasks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'newTasks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NewTaskList>) istream)
  "Deserializes a message object of type '<NewTaskList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'newTasks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'newTasks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'kobuki_fleet_msgs-msg:NewTask))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NewTaskList>)))
  "Returns string type for a message object of type '<NewTaskList>"
  "kobuki_fleet_msgs/NewTaskList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NewTaskList)))
  "Returns string type for a message object of type 'NewTaskList"
  "kobuki_fleet_msgs/NewTaskList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NewTaskList>)))
  "Returns md5sum for a message object of type '<NewTaskList>"
  "dd9fdf5506615019295aa2e21e147ecb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NewTaskList)))
  "Returns md5sum for a message object of type 'NewTaskList"
  "dd9fdf5506615019295aa2e21e147ecb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NewTaskList>)))
  "Returns full string definition for message of type '<NewTaskList>"
  (cl:format cl:nil "Header header~%kobuki_fleet_msgs/NewTask[] newTasks~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: kobuki_fleet_msgs/NewTask~%Header header~%string machineName~%string robotName~%string destinationName~%uint16 taskDeadline    ~%~%uint16 REPLENISHMENT=1~%uint16 DELIVERY=2~%uint16 GOTO=3~%uint16 CALL=4~%uint16 taskType     ~%~%uint16 taskStatus~%uint16 OPEN=0~%uint16 WORKING=1~%uint16 FINISHED=2~%uint16 ERROR=3~%uint16 CANCELLED=4~%~%uint16 taskMaterialType~%uint16 typeA=1~%uint16 typeB=2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NewTaskList)))
  "Returns full string definition for message of type 'NewTaskList"
  (cl:format cl:nil "Header header~%kobuki_fleet_msgs/NewTask[] newTasks~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: kobuki_fleet_msgs/NewTask~%Header header~%string machineName~%string robotName~%string destinationName~%uint16 taskDeadline    ~%~%uint16 REPLENISHMENT=1~%uint16 DELIVERY=2~%uint16 GOTO=3~%uint16 CALL=4~%uint16 taskType     ~%~%uint16 taskStatus~%uint16 OPEN=0~%uint16 WORKING=1~%uint16 FINISHED=2~%uint16 ERROR=3~%uint16 CANCELLED=4~%~%uint16 taskMaterialType~%uint16 typeA=1~%uint16 typeB=2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NewTaskList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'newTasks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NewTaskList>))
  "Converts a ROS message object to a list"
  (cl:list 'NewTaskList
    (cl:cons ':header (header msg))
    (cl:cons ':newTasks (newTasks msg))
))
