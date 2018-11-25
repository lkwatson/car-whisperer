; Auto-generated. Do not edit!


(cl:in-package kobuki_fleet_msgs-msg)


;//! \htmlinclude SubTaskVector.msg.html

(cl:defclass <SubTaskVector> (roslisp-msg-protocol:ros-message)
  ((subtasks
    :reader subtasks
    :initarg :subtasks
    :type (cl:vector kobuki_fleet_msgs-msg:SubTask)
   :initform (cl:make-array 0 :element-type 'kobuki_fleet_msgs-msg:SubTask :initial-element (cl:make-instance 'kobuki_fleet_msgs-msg:SubTask))))
)

(cl:defclass SubTaskVector (<SubTaskVector>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SubTaskVector>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SubTaskVector)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_fleet_msgs-msg:<SubTaskVector> is deprecated: use kobuki_fleet_msgs-msg:SubTaskVector instead.")))

(cl:ensure-generic-function 'subtasks-val :lambda-list '(m))
(cl:defmethod subtasks-val ((m <SubTaskVector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:subtasks-val is deprecated.  Use kobuki_fleet_msgs-msg:subtasks instead.")
  (subtasks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SubTaskVector>) ostream)
  "Serializes a message object of type '<SubTaskVector>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'subtasks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'subtasks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SubTaskVector>) istream)
  "Deserializes a message object of type '<SubTaskVector>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'subtasks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'subtasks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'kobuki_fleet_msgs-msg:SubTask))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SubTaskVector>)))
  "Returns string type for a message object of type '<SubTaskVector>"
  "kobuki_fleet_msgs/SubTaskVector")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SubTaskVector)))
  "Returns string type for a message object of type 'SubTaskVector"
  "kobuki_fleet_msgs/SubTaskVector")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SubTaskVector>)))
  "Returns md5sum for a message object of type '<SubTaskVector>"
  "2917f2217bff62252bf6a670f9f4e521")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SubTaskVector)))
  "Returns md5sum for a message object of type 'SubTaskVector"
  "2917f2217bff62252bf6a670f9f4e521")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SubTaskVector>)))
  "Returns full string definition for message of type '<SubTaskVector>"
  (cl:format cl:nil "SubTask[] subtasks~%~%================================================================================~%MSG: kobuki_fleet_msgs/SubTask~%string subTasktType~%string serviceArea~%uint16 poseOrientation~%float32 serviceAreaHigh~%geometry_msgs/Pose poseNew~%geometry_msgs/Point pose~%duration waitingTime~%string objectType~%uint16 objectId~%uint16 object2~%uint16 object3~%uint16 containerId~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SubTaskVector)))
  "Returns full string definition for message of type 'SubTaskVector"
  (cl:format cl:nil "SubTask[] subtasks~%~%================================================================================~%MSG: kobuki_fleet_msgs/SubTask~%string subTasktType~%string serviceArea~%uint16 poseOrientation~%float32 serviceAreaHigh~%geometry_msgs/Pose poseNew~%geometry_msgs/Point pose~%duration waitingTime~%string objectType~%uint16 objectId~%uint16 object2~%uint16 object3~%uint16 containerId~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SubTaskVector>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'subtasks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SubTaskVector>))
  "Converts a ROS message object to a list"
  (cl:list 'SubTaskVector
    (cl:cons ':subtasks (subtasks msg))
))
