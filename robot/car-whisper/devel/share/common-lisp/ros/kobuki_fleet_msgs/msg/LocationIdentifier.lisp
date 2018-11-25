; Auto-generated. Do not edit!


(cl:in-package kobuki_fleet_msgs-msg)


;//! \htmlinclude LocationIdentifier.msg.html

(cl:defclass <LocationIdentifier> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type std_msgs-msg:UInt64
    :initform (cl:make-instance 'std_msgs-msg:UInt64))
   (instance_id
    :reader instance_id
    :initarg :instance_id
    :type std_msgs-msg:UInt64
    :initform (cl:make-instance 'std_msgs-msg:UInt64))
   (locationDescription
    :reader locationDescription
    :initarg :locationDescription
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (materialType
    :reader materialType
    :initarg :materialType
    :type std_msgs-msg:Int16
    :initform (cl:make-instance 'std_msgs-msg:Int16))
   (materialDescription
    :reader materialDescription
    :initarg :materialDescription
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass LocationIdentifier (<LocationIdentifier>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocationIdentifier>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocationIdentifier)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_fleet_msgs-msg:<LocationIdentifier> is deprecated: use kobuki_fleet_msgs-msg:LocationIdentifier instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <LocationIdentifier>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:type-val is deprecated.  Use kobuki_fleet_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'instance_id-val :lambda-list '(m))
(cl:defmethod instance_id-val ((m <LocationIdentifier>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:instance_id-val is deprecated.  Use kobuki_fleet_msgs-msg:instance_id instead.")
  (instance_id m))

(cl:ensure-generic-function 'locationDescription-val :lambda-list '(m))
(cl:defmethod locationDescription-val ((m <LocationIdentifier>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:locationDescription-val is deprecated.  Use kobuki_fleet_msgs-msg:locationDescription instead.")
  (locationDescription m))

(cl:ensure-generic-function 'materialType-val :lambda-list '(m))
(cl:defmethod materialType-val ((m <LocationIdentifier>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:materialType-val is deprecated.  Use kobuki_fleet_msgs-msg:materialType instead.")
  (materialType m))

(cl:ensure-generic-function 'materialDescription-val :lambda-list '(m))
(cl:defmethod materialDescription-val ((m <LocationIdentifier>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:materialDescription-val is deprecated.  Use kobuki_fleet_msgs-msg:materialDescription instead.")
  (materialDescription m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <LocationIdentifier>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-msg:pose-val is deprecated.  Use kobuki_fleet_msgs-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LocationIdentifier>)))
    "Constants for message type '<LocationIdentifier>"
  '((:SC . 1)
    (:MA . 2)
    (:CB . 3)
    (:WP . 4)
    (:PP . 5)
    (:ROBOT . 6)
    (:A . 1)
    (:B . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LocationIdentifier)))
    "Constants for message type 'LocationIdentifier"
  '((:SC . 1)
    (:MA . 2)
    (:CB . 3)
    (:WP . 4)
    (:PP . 5)
    (:ROBOT . 6)
    (:A . 1)
    (:B . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocationIdentifier>) ostream)
  "Serializes a message object of type '<LocationIdentifier>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'instance_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'locationDescription) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'materialType) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'materialDescription) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocationIdentifier>) istream)
  "Deserializes a message object of type '<LocationIdentifier>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'instance_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'locationDescription) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'materialType) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'materialDescription) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocationIdentifier>)))
  "Returns string type for a message object of type '<LocationIdentifier>"
  "kobuki_fleet_msgs/LocationIdentifier")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocationIdentifier)))
  "Returns string type for a message object of type 'LocationIdentifier"
  "kobuki_fleet_msgs/LocationIdentifier")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocationIdentifier>)))
  "Returns md5sum for a message object of type '<LocationIdentifier>"
  "a06bbdeb31528346ad4d8dbf64743457")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocationIdentifier)))
  "Returns md5sum for a message object of type 'LocationIdentifier"
  "a06bbdeb31528346ad4d8dbf64743457")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocationIdentifier>)))
  "Returns full string definition for message of type '<LocationIdentifier>"
  (cl:format cl:nil "# Location types~%uint8    SC    = 1  # Source~%uint8    MA    = 2  # Machine~%uint8    CB    = 3  # Conveyor belt~%uint8    WP    = 4  # Way Point (additional navigation goal)~%uint8    PP    = 5  # Precision Placement platform~%uint8    ROBOT = 6~%~%# The type of location~%std_msgs/UInt64 type~%~%# The instance ID of the location (e.g. if there are several shelves)~%std_msgs/UInt64  instance_id~%~%# A human-readable description of the location~%std_msgs/String  locationDescription~%~%uint8    A    = 1  # Material type A~%uint8    B    = 2  # Material type B~%~%# A human-readable description of the material type contained in the localization~%std_msgs/Int16  materialType~%~%# A human-readable description of the material type contained in the localization~%std_msgs/String  materialDescription~%~%# Pose with position and orientation~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: std_msgs/UInt64~%uint64 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Int16~%int16 data~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocationIdentifier)))
  "Returns full string definition for message of type 'LocationIdentifier"
  (cl:format cl:nil "# Location types~%uint8    SC    = 1  # Source~%uint8    MA    = 2  # Machine~%uint8    CB    = 3  # Conveyor belt~%uint8    WP    = 4  # Way Point (additional navigation goal)~%uint8    PP    = 5  # Precision Placement platform~%uint8    ROBOT = 6~%~%# The type of location~%std_msgs/UInt64 type~%~%# The instance ID of the location (e.g. if there are several shelves)~%std_msgs/UInt64  instance_id~%~%# A human-readable description of the location~%std_msgs/String  locationDescription~%~%uint8    A    = 1  # Material type A~%uint8    B    = 2  # Material type B~%~%# A human-readable description of the material type contained in the localization~%std_msgs/Int16  materialType~%~%# A human-readable description of the material type contained in the localization~%std_msgs/String  materialDescription~%~%# Pose with position and orientation~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: std_msgs/UInt64~%uint64 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Int16~%int16 data~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocationIdentifier>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'instance_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'locationDescription))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'materialType))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'materialDescription))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocationIdentifier>))
  "Converts a ROS message object to a list"
  (cl:list 'LocationIdentifier
    (cl:cons ':type (type msg))
    (cl:cons ':instance_id (instance_id msg))
    (cl:cons ':locationDescription (locationDescription msg))
    (cl:cons ':materialType (materialType msg))
    (cl:cons ':materialDescription (materialDescription msg))
    (cl:cons ':pose (pose msg))
))
