; Auto-generated. Do not edit!


(cl:in-package kobuki_fleet_msgs-msg)


;//! \htmlinclude SubTask.msg.html

(cl:defclass <SubTask> (roslisp-msg-protocol:ros-message)
  ((subTasktType
    :reader subTasktType
    :initarg :subTasktType
    :type cl:string
    :initform "")
   (serviceArea
    :reader serviceArea
    :initarg :serviceArea
    :type cl:string
    :initform "")
   (poseOrientation
    :reader poseOrientation
    :initarg :poseOrientation
    :type cl:fixnum
    :initform 0)
   (serviceAreaHigh
    :reader serviceAreaHigh
    :initarg :serviceAreaHigh
    :type cl:float
    :initform 0.0)
   (poseNew
    :reader poseNew
    :initarg :poseNew
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (waitingTime
    :reader waitingTime
    :initarg :waitingTime
    :type cl:real
    :initform 0)
   (objectType
    :reader objectType
    :initarg :objectType
    :type cl:string
    :initform "")
   (objectId
    :reader objectId
    :initarg :objectId
    :type cl:fixnum
    :initform 0)
   (object2
    :reader object2
    :initarg :object2
    :type cl:fixnum
    :initform 0)
   (object3
    :reader object3
    :initarg :object3
    :type cl:fixnum
    :initform 0)
   (containerId
    :reader containerId
    :initarg :containerId
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SubTask (<SubTask>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SubTask>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SubTask)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_fleet_msgs-msg:<SubTask> is deprecated: use kobuki_fleet_msgs-msg:SubTask instead.")))

(cl:ensure-generic-function 'subTasktType-val :lambda-list '(m))
(cl:defmethod subTasktType-val ((m <SubTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:subTasktType-val is deprecated.  Use kobuki_fleet_msgs-msg:subTasktType instead.")
  (subTasktType m))

(cl:ensure-generic-function 'serviceArea-val :lambda-list '(m))
(cl:defmethod serviceArea-val ((m <SubTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:serviceArea-val is deprecated.  Use kobuki_fleet_msgs-msg:serviceArea instead.")
  (serviceArea m))

(cl:ensure-generic-function 'poseOrientation-val :lambda-list '(m))
(cl:defmethod poseOrientation-val ((m <SubTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:poseOrientation-val is deprecated.  Use kobuki_fleet_msgs-msg:poseOrientation instead.")
  (poseOrientation m))

(cl:ensure-generic-function 'serviceAreaHigh-val :lambda-list '(m))
(cl:defmethod serviceAreaHigh-val ((m <SubTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:serviceAreaHigh-val is deprecated.  Use kobuki_fleet_msgs-msg:serviceAreaHigh instead.")
  (serviceAreaHigh m))

(cl:ensure-generic-function 'poseNew-val :lambda-list '(m))
(cl:defmethod poseNew-val ((m <SubTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:poseNew-val is deprecated.  Use kobuki_fleet_msgs-msg:poseNew instead.")
  (poseNew m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <SubTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:pose-val is deprecated.  Use kobuki_fleet_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'waitingTime-val :lambda-list '(m))
(cl:defmethod waitingTime-val ((m <SubTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:waitingTime-val is deprecated.  Use kobuki_fleet_msgs-msg:waitingTime instead.")
  (waitingTime m))

(cl:ensure-generic-function 'objectType-val :lambda-list '(m))
(cl:defmethod objectType-val ((m <SubTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:objectType-val is deprecated.  Use kobuki_fleet_msgs-msg:objectType instead.")
  (objectType m))

(cl:ensure-generic-function 'objectId-val :lambda-list '(m))
(cl:defmethod objectId-val ((m <SubTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:objectId-val is deprecated.  Use kobuki_fleet_msgs-msg:objectId instead.")
  (objectId m))

(cl:ensure-generic-function 'object2-val :lambda-list '(m))
(cl:defmethod object2-val ((m <SubTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:object2-val is deprecated.  Use kobuki_fleet_msgs-msg:object2 instead.")
  (object2 m))

(cl:ensure-generic-function 'object3-val :lambda-list '(m))
(cl:defmethod object3-val ((m <SubTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:object3-val is deprecated.  Use kobuki_fleet_msgs-msg:object3 instead.")
  (object3 m))

(cl:ensure-generic-function 'containerId-val :lambda-list '(m))
(cl:defmethod containerId-val ((m <SubTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:containerId-val is deprecated.  Use kobuki_fleet_msgs-msg:containerId instead.")
  (containerId m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SubTask>) ostream)
  "Serializes a message object of type '<SubTask>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'subTasktType))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'subTasktType))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'serviceArea))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'serviceArea))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'poseOrientation)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'poseOrientation)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'serviceAreaHigh))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'poseNew) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'waitingTime)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'waitingTime) (cl:floor (cl:slot-value msg 'waitingTime)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'objectType))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'objectType))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'objectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'objectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'object2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'object2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'object3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'object3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'containerId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'containerId)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SubTask>) istream)
  "Deserializes a message object of type '<SubTask>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'subTasktType) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'subTasktType) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'serviceArea) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'serviceArea) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'poseOrientation)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'poseOrientation)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'serviceAreaHigh) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'poseNew) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'waitingTime) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'objectType) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'objectType) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'objectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'objectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'object2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'object2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'object3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'object3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'containerId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'containerId)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SubTask>)))
  "Returns string type for a message object of type '<SubTask>"
  "kobuki_fleet_msgs/SubTask")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SubTask)))
  "Returns string type for a message object of type 'SubTask"
  "kobuki_fleet_msgs/SubTask")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SubTask>)))
  "Returns md5sum for a message object of type '<SubTask>"
  "bf4ea2cfd8702568f206b18548c2144d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SubTask)))
  "Returns md5sum for a message object of type 'SubTask"
  "bf4ea2cfd8702568f206b18548c2144d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SubTask>)))
  "Returns full string definition for message of type '<SubTask>"
  (cl:format cl:nil "string subTasktType~%string serviceArea~%uint16 poseOrientation~%float32 serviceAreaHigh~%geometry_msgs/Pose poseNew~%geometry_msgs/Point pose~%duration waitingTime~%string objectType~%uint16 objectId~%uint16 object2~%uint16 object3~%uint16 containerId~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SubTask)))
  "Returns full string definition for message of type 'SubTask"
  (cl:format cl:nil "string subTasktType~%string serviceArea~%uint16 poseOrientation~%float32 serviceAreaHigh~%geometry_msgs/Pose poseNew~%geometry_msgs/Point pose~%duration waitingTime~%string objectType~%uint16 objectId~%uint16 object2~%uint16 object3~%uint16 containerId~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SubTask>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'subTasktType))
     4 (cl:length (cl:slot-value msg 'serviceArea))
     2
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'poseNew))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     8
     4 (cl:length (cl:slot-value msg 'objectType))
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SubTask>))
  "Converts a ROS message object to a list"
  (cl:list 'SubTask
    (cl:cons ':subTasktType (subTasktType msg))
    (cl:cons ':serviceArea (serviceArea msg))
    (cl:cons ':poseOrientation (poseOrientation msg))
    (cl:cons ':serviceAreaHigh (serviceAreaHigh msg))
    (cl:cons ':poseNew (poseNew msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':waitingTime (waitingTime msg))
    (cl:cons ':objectType (objectType msg))
    (cl:cons ':objectId (objectId msg))
    (cl:cons ':object2 (object2 msg))
    (cl:cons ':object3 (object3 msg))
    (cl:cons ':containerId (containerId msg))
))
