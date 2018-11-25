; Auto-generated. Do not edit!


(cl:in-package kobuki_fleet_msgs-srv)


;//! \htmlinclude setInventoryData-request.msg.html

(cl:defclass <setInventoryData-request> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (object
    :reader object
    :initarg :object
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (actual_station
    :reader actual_station
    :initarg :actual_station
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (station_height
    :reader station_height
    :initarg :station_height
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (brightness
    :reader brightness
    :initarg :brightness
    :type std_msgs-msg:Int16
    :initform (cl:make-instance 'std_msgs-msg:Int16))
   (threshold_1
    :reader threshold_1
    :initarg :threshold_1
    :type std_msgs-msg:Int16
    :initform (cl:make-instance 'std_msgs-msg:Int16))
   (threshold_2
    :reader threshold_2
    :initarg :threshold_2
    :type std_msgs-msg:Int16
    :initform (cl:make-instance 'std_msgs-msg:Int16))
   (filter_size
    :reader filter_size
    :initarg :filter_size
    :type std_msgs-msg:Int16
    :initform (cl:make-instance 'std_msgs-msg:Int16))
   (filter
    :reader filter
    :initarg :filter
    :type std_msgs-msg:Int16
    :initform (cl:make-instance 'std_msgs-msg:Int16))
   (laserScan
    :reader laserScan
    :initarg :laserScan
    :type sensor_msgs-msg:LaserScan
    :initform (cl:make-instance 'sensor_msgs-msg:LaserScan))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (material_type
    :reader material_type
    :initarg :material_type
    :type std_msgs-msg:Int16
    :initform (cl:make-instance 'std_msgs-msg:Int16)))
)

(cl:defclass setInventoryData-request (<setInventoryData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <setInventoryData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'setInventoryData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_fleet_msgs-srv:<setInventoryData-request> is deprecated: use kobuki_fleet_msgs-srv:setInventoryData-request instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <setInventoryData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:start-val is deprecated.  Use kobuki_fleet_msgs-srv:start instead.")
  (start m))

(cl:ensure-generic-function 'object-val :lambda-list '(m))
(cl:defmethod object-val ((m <setInventoryData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:object-val is deprecated.  Use kobuki_fleet_msgs-srv:object instead.")
  (object m))

(cl:ensure-generic-function 'actual_station-val :lambda-list '(m))
(cl:defmethod actual_station-val ((m <setInventoryData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:actual_station-val is deprecated.  Use kobuki_fleet_msgs-srv:actual_station instead.")
  (actual_station m))

(cl:ensure-generic-function 'station_height-val :lambda-list '(m))
(cl:defmethod station_height-val ((m <setInventoryData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:station_height-val is deprecated.  Use kobuki_fleet_msgs-srv:station_height instead.")
  (station_height m))

(cl:ensure-generic-function 'brightness-val :lambda-list '(m))
(cl:defmethod brightness-val ((m <setInventoryData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:brightness-val is deprecated.  Use kobuki_fleet_msgs-srv:brightness instead.")
  (brightness m))

(cl:ensure-generic-function 'threshold_1-val :lambda-list '(m))
(cl:defmethod threshold_1-val ((m <setInventoryData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:threshold_1-val is deprecated.  Use kobuki_fleet_msgs-srv:threshold_1 instead.")
  (threshold_1 m))

(cl:ensure-generic-function 'threshold_2-val :lambda-list '(m))
(cl:defmethod threshold_2-val ((m <setInventoryData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:threshold_2-val is deprecated.  Use kobuki_fleet_msgs-srv:threshold_2 instead.")
  (threshold_2 m))

(cl:ensure-generic-function 'filter_size-val :lambda-list '(m))
(cl:defmethod filter_size-val ((m <setInventoryData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:filter_size-val is deprecated.  Use kobuki_fleet_msgs-srv:filter_size instead.")
  (filter_size m))

(cl:ensure-generic-function 'filter-val :lambda-list '(m))
(cl:defmethod filter-val ((m <setInventoryData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:filter-val is deprecated.  Use kobuki_fleet_msgs-srv:filter instead.")
  (filter m))

(cl:ensure-generic-function 'laserScan-val :lambda-list '(m))
(cl:defmethod laserScan-val ((m <setInventoryData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:laserScan-val is deprecated.  Use kobuki_fleet_msgs-srv:laserScan instead.")
  (laserScan m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <setInventoryData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:pose-val is deprecated.  Use kobuki_fleet_msgs-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'material_type-val :lambda-list '(m))
(cl:defmethod material_type-val ((m <setInventoryData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:material_type-val is deprecated.  Use kobuki_fleet_msgs-srv:material_type instead.")
  (material_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <setInventoryData-request>) ostream)
  "Serializes a message object of type '<setInventoryData-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'actual_station) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'station_height) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'brightness) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'threshold_1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'threshold_2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filter_size) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filter) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'laserScan) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'material_type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <setInventoryData-request>) istream)
  "Deserializes a message object of type '<setInventoryData-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'actual_station) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'station_height) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'brightness) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'threshold_1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'threshold_2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filter_size) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filter) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'laserScan) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'material_type) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<setInventoryData-request>)))
  "Returns string type for a service object of type '<setInventoryData-request>"
  "kobuki_fleet_msgs/setInventoryDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'setInventoryData-request)))
  "Returns string type for a service object of type 'setInventoryData-request"
  "kobuki_fleet_msgs/setInventoryDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<setInventoryData-request>)))
  "Returns md5sum for a message object of type '<setInventoryData-request>"
  "4341bb2b1dafa97b5edbcb56d1fb3a54")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'setInventoryData-request)))
  "Returns md5sum for a message object of type 'setInventoryData-request"
  "4341bb2b1dafa97b5edbcb56d1fb3a54")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<setInventoryData-request>)))
  "Returns full string definition for message of type '<setInventoryData-request>"
  (cl:format cl:nil "std_msgs/Bool start~%std_msgs/String object~%std_msgs/String actual_station~%std_msgs/Float32 station_height~%std_msgs/Int16 brightness~%std_msgs/Int16 threshold_1~%std_msgs/Int16 threshold_2~%std_msgs/Int16 filter_size~%std_msgs/Int16 filter~%sensor_msgs/LaserScan laserScan~%geometry_msgs/Pose pose~%std_msgs/Int16 material_type~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/Int16~%int16 data~%~%================================================================================~%MSG: sensor_msgs/LaserScan~%# Single scan from a planar laser range-finder~%#~%# If you have another ranging device with different behavior (e.g. a sonar~%# array), please find or create a different message, since applications~%# will make fairly laser-specific assumptions about this data~%~%Header header            # timestamp in the header is the acquisition time of ~%                         # the first ray in the scan.~%                         #~%                         # in frame frame_id, angles are measured around ~%                         # the positive Z axis (counterclockwise, if Z is up)~%                         # with zero angle being forward along the x axis~%                         ~%float32 angle_min        # start angle of the scan [rad]~%float32 angle_max        # end angle of the scan [rad]~%float32 angle_increment  # angular distance between measurements [rad]~%~%float32 time_increment   # time between measurements [seconds] - if your scanner~%                         # is moving, this will be used in interpolating position~%                         # of 3d points~%float32 scan_time        # time between scans [seconds]~%~%float32 range_min        # minimum range value [m]~%float32 range_max        # maximum range value [m]~%~%float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)~%float32[] intensities    # intensity data [device-specific units].  If your~%                         # device does not provide intensities, please leave~%                         # the array empty.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'setInventoryData-request)))
  "Returns full string definition for message of type 'setInventoryData-request"
  (cl:format cl:nil "std_msgs/Bool start~%std_msgs/String object~%std_msgs/String actual_station~%std_msgs/Float32 station_height~%std_msgs/Int16 brightness~%std_msgs/Int16 threshold_1~%std_msgs/Int16 threshold_2~%std_msgs/Int16 filter_size~%std_msgs/Int16 filter~%sensor_msgs/LaserScan laserScan~%geometry_msgs/Pose pose~%std_msgs/Int16 material_type~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/Int16~%int16 data~%~%================================================================================~%MSG: sensor_msgs/LaserScan~%# Single scan from a planar laser range-finder~%#~%# If you have another ranging device with different behavior (e.g. a sonar~%# array), please find or create a different message, since applications~%# will make fairly laser-specific assumptions about this data~%~%Header header            # timestamp in the header is the acquisition time of ~%                         # the first ray in the scan.~%                         #~%                         # in frame frame_id, angles are measured around ~%                         # the positive Z axis (counterclockwise, if Z is up)~%                         # with zero angle being forward along the x axis~%                         ~%float32 angle_min        # start angle of the scan [rad]~%float32 angle_max        # end angle of the scan [rad]~%float32 angle_increment  # angular distance between measurements [rad]~%~%float32 time_increment   # time between measurements [seconds] - if your scanner~%                         # is moving, this will be used in interpolating position~%                         # of 3d points~%float32 scan_time        # time between scans [seconds]~%~%float32 range_min        # minimum range value [m]~%float32 range_max        # maximum range value [m]~%~%float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)~%float32[] intensities    # intensity data [device-specific units].  If your~%                         # device does not provide intensities, please leave~%                         # the array empty.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <setInventoryData-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'actual_station))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'station_height))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'brightness))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'threshold_1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'threshold_2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filter_size))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filter))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'laserScan))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'material_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <setInventoryData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'setInventoryData-request
    (cl:cons ':start (start msg))
    (cl:cons ':object (object msg))
    (cl:cons ':actual_station (actual_station msg))
    (cl:cons ':station_height (station_height msg))
    (cl:cons ':brightness (brightness msg))
    (cl:cons ':threshold_1 (threshold_1 msg))
    (cl:cons ':threshold_2 (threshold_2 msg))
    (cl:cons ':filter_size (filter_size msg))
    (cl:cons ':filter (filter msg))
    (cl:cons ':laserScan (laserScan msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':material_type (material_type msg))
))
;//! \htmlinclude setInventoryData-response.msg.html

(cl:defclass <setInventoryData-response> (roslisp-msg-protocol:ros-message)
  ((finished
    :reader finished
    :initarg :finished
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass setInventoryData-response (<setInventoryData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <setInventoryData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'setInventoryData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_fleet_msgs-srv:<setInventoryData-response> is deprecated: use kobuki_fleet_msgs-srv:setInventoryData-response instead.")))

(cl:ensure-generic-function 'finished-val :lambda-list '(m))
(cl:defmethod finished-val ((m <setInventoryData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:finished-val is deprecated.  Use kobuki_fleet_msgs-srv:finished instead.")
  (finished m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <setInventoryData-response>) ostream)
  "Serializes a message object of type '<setInventoryData-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'finished) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <setInventoryData-response>) istream)
  "Deserializes a message object of type '<setInventoryData-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'finished) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<setInventoryData-response>)))
  "Returns string type for a service object of type '<setInventoryData-response>"
  "kobuki_fleet_msgs/setInventoryDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'setInventoryData-response)))
  "Returns string type for a service object of type 'setInventoryData-response"
  "kobuki_fleet_msgs/setInventoryDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<setInventoryData-response>)))
  "Returns md5sum for a message object of type '<setInventoryData-response>"
  "4341bb2b1dafa97b5edbcb56d1fb3a54")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'setInventoryData-response)))
  "Returns md5sum for a message object of type 'setInventoryData-response"
  "4341bb2b1dafa97b5edbcb56d1fb3a54")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<setInventoryData-response>)))
  "Returns full string definition for message of type '<setInventoryData-response>"
  (cl:format cl:nil "std_msgs/Bool finished~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'setInventoryData-response)))
  "Returns full string definition for message of type 'setInventoryData-response"
  (cl:format cl:nil "std_msgs/Bool finished~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <setInventoryData-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'finished))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <setInventoryData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'setInventoryData-response
    (cl:cons ':finished (finished msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'setInventoryData)))
  'setInventoryData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'setInventoryData)))
  'setInventoryData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'setInventoryData)))
  "Returns string type for a service object of type '<setInventoryData>"
  "kobuki_fleet_msgs/setInventoryData")