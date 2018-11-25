; Auto-generated. Do not edit!


(cl:in-package kobuki_fleet_msgs-srv)


;//! \htmlinclude getAllInventoryData-request.msg.html

(cl:defclass <getAllInventoryData-request> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass getAllInventoryData-request (<getAllInventoryData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <getAllInventoryData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'getAllInventoryData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_fleet_msgs-srv:<getAllInventoryData-request> is deprecated: use kobuki_fleet_msgs-srv:getAllInventoryData-request instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <getAllInventoryData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:start-val is deprecated.  Use kobuki_fleet_msgs-srv:start instead.")
  (start m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <getAllInventoryData-request>) ostream)
  "Serializes a message object of type '<getAllInventoryData-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <getAllInventoryData-request>) istream)
  "Deserializes a message object of type '<getAllInventoryData-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<getAllInventoryData-request>)))
  "Returns string type for a service object of type '<getAllInventoryData-request>"
  "kobuki_fleet_msgs/getAllInventoryDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getAllInventoryData-request)))
  "Returns string type for a service object of type 'getAllInventoryData-request"
  "kobuki_fleet_msgs/getAllInventoryDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<getAllInventoryData-request>)))
  "Returns md5sum for a message object of type '<getAllInventoryData-request>"
  "e657d86d657c974d0013eea9728a2ccb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'getAllInventoryData-request)))
  "Returns md5sum for a message object of type 'getAllInventoryData-request"
  "e657d86d657c974d0013eea9728a2ccb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<getAllInventoryData-request>)))
  "Returns full string definition for message of type '<getAllInventoryData-request>"
  (cl:format cl:nil "std_msgs/Bool start~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'getAllInventoryData-request)))
  "Returns full string definition for message of type 'getAllInventoryData-request"
  (cl:format cl:nil "std_msgs/Bool start~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <getAllInventoryData-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <getAllInventoryData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'getAllInventoryData-request
    (cl:cons ':start (start msg))
))
;//! \htmlinclude getAllInventoryData-response.msg.html

(cl:defclass <getAllInventoryData-response> (roslisp-msg-protocol:ros-message)
  ((locations
    :reader locations
    :initarg :locations
    :type (cl:vector kobuki_fleet_msgs-msg:LocationIdentifier)
   :initform (cl:make-array 0 :element-type 'kobuki_fleet_msgs-msg:LocationIdentifier :initial-element (cl:make-instance 'kobuki_fleet_msgs-msg:LocationIdentifier)))
   (finished
    :reader finished
    :initarg :finished
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass getAllInventoryData-response (<getAllInventoryData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <getAllInventoryData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'getAllInventoryData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_fleet_msgs-srv:<getAllInventoryData-response> is deprecated: use kobuki_fleet_msgs-srv:getAllInventoryData-response instead.")))

(cl:ensure-generic-function 'locations-val :lambda-list '(m))
(cl:defmethod locations-val ((m <getAllInventoryData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:locations-val is deprecated.  Use kobuki_fleet_msgs-srv:locations instead.")
  (locations m))

(cl:ensure-generic-function 'finished-val :lambda-list '(m))
(cl:defmethod finished-val ((m <getAllInventoryData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:finished-val is deprecated.  Use kobuki_fleet_msgs-srv:finished instead.")
  (finished m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <getAllInventoryData-response>) ostream)
  "Serializes a message object of type '<getAllInventoryData-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'locations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'locations))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'finished) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <getAllInventoryData-response>) istream)
  "Deserializes a message object of type '<getAllInventoryData-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'locations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'locations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'kobuki_fleet_msgs-msg:LocationIdentifier))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'finished) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<getAllInventoryData-response>)))
  "Returns string type for a service object of type '<getAllInventoryData-response>"
  "kobuki_fleet_msgs/getAllInventoryDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getAllInventoryData-response)))
  "Returns string type for a service object of type 'getAllInventoryData-response"
  "kobuki_fleet_msgs/getAllInventoryDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<getAllInventoryData-response>)))
  "Returns md5sum for a message object of type '<getAllInventoryData-response>"
  "e657d86d657c974d0013eea9728a2ccb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'getAllInventoryData-response)))
  "Returns md5sum for a message object of type 'getAllInventoryData-response"
  "e657d86d657c974d0013eea9728a2ccb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<getAllInventoryData-response>)))
  "Returns full string definition for message of type '<getAllInventoryData-response>"
  (cl:format cl:nil "kobuki_fleet_msgs/LocationIdentifier[] locations~%std_msgs/Bool finished~%~%================================================================================~%MSG: kobuki_fleet_msgs/LocationIdentifier~%# Location types~%uint8    SC    = 1  # Source~%uint8    MA    = 2  # Machine~%uint8    CB    = 3  # Conveyor belt~%uint8    WP    = 4  # Way Point (additional navigation goal)~%uint8    PP    = 5  # Precision Placement platform~%uint8    ROBOT = 6~%~%# The type of location~%std_msgs/UInt64 type~%~%# The instance ID of the location (e.g. if there are several shelves)~%std_msgs/UInt64  instance_id~%~%# A human-readable description of the location~%std_msgs/String  locationDescription~%~%uint8    A    = 1  # Material type A~%uint8    B    = 2  # Material type B~%~%# A human-readable description of the material type contained in the localization~%std_msgs/Int16  materialType~%~%# A human-readable description of the material type contained in the localization~%std_msgs/String  materialDescription~%~%# Pose with position and orientation~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: std_msgs/UInt64~%uint64 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Int16~%int16 data~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'getAllInventoryData-response)))
  "Returns full string definition for message of type 'getAllInventoryData-response"
  (cl:format cl:nil "kobuki_fleet_msgs/LocationIdentifier[] locations~%std_msgs/Bool finished~%~%================================================================================~%MSG: kobuki_fleet_msgs/LocationIdentifier~%# Location types~%uint8    SC    = 1  # Source~%uint8    MA    = 2  # Machine~%uint8    CB    = 3  # Conveyor belt~%uint8    WP    = 4  # Way Point (additional navigation goal)~%uint8    PP    = 5  # Precision Placement platform~%uint8    ROBOT = 6~%~%# The type of location~%std_msgs/UInt64 type~%~%# The instance ID of the location (e.g. if there are several shelves)~%std_msgs/UInt64  instance_id~%~%# A human-readable description of the location~%std_msgs/String  locationDescription~%~%uint8    A    = 1  # Material type A~%uint8    B    = 2  # Material type B~%~%# A human-readable description of the material type contained in the localization~%std_msgs/Int16  materialType~%~%# A human-readable description of the material type contained in the localization~%std_msgs/String  materialDescription~%~%# Pose with position and orientation~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: std_msgs/UInt64~%uint64 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Int16~%int16 data~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <getAllInventoryData-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'locations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'finished))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <getAllInventoryData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'getAllInventoryData-response
    (cl:cons ':locations (locations msg))
    (cl:cons ':finished (finished msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'getAllInventoryData)))
  'getAllInventoryData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'getAllInventoryData)))
  'getAllInventoryData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getAllInventoryData)))
  "Returns string type for a service object of type '<getAllInventoryData>"
  "kobuki_fleet_msgs/getAllInventoryData")