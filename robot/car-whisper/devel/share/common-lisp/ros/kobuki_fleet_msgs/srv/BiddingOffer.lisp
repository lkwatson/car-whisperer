; Auto-generated. Do not edit!


(cl:in-package kobuki_fleet_msgs-srv)


;//! \htmlinclude BiddingOffer-request.msg.html

(cl:defclass <BiddingOffer-request> (roslisp-msg-protocol:ros-message)
  ((bidd
    :reader bidd
    :initarg :bidd
    :type kobuki_fleet_msgs-msg:Bidding
    :initform (cl:make-instance 'kobuki_fleet_msgs-msg:Bidding))
   (cancelOffer
    :reader cancelOffer
    :initarg :cancelOffer
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BiddingOffer-request (<BiddingOffer-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BiddingOffer-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BiddingOffer-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_fleet_msgs-srv:<BiddingOffer-request> is deprecated: use kobuki_fleet_msgs-srv:BiddingOffer-request instead.")))

(cl:ensure-generic-function 'bidd-val :lambda-list '(m))
(cl:defmethod bidd-val ((m <BiddingOffer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:bidd-val is deprecated.  Use kobuki_fleet_msgs-srv:bidd instead.")
  (bidd m))

(cl:ensure-generic-function 'cancelOffer-val :lambda-list '(m))
(cl:defmethod cancelOffer-val ((m <BiddingOffer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:cancelOffer-val is deprecated.  Use kobuki_fleet_msgs-srv:cancelOffer instead.")
  (cancelOffer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BiddingOffer-request>) ostream)
  "Serializes a message object of type '<BiddingOffer-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bidd) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cancelOffer) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BiddingOffer-request>) istream)
  "Deserializes a message object of type '<BiddingOffer-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bidd) istream)
    (cl:setf (cl:slot-value msg 'cancelOffer) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BiddingOffer-request>)))
  "Returns string type for a service object of type '<BiddingOffer-request>"
  "kobuki_fleet_msgs/BiddingOfferRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BiddingOffer-request)))
  "Returns string type for a service object of type 'BiddingOffer-request"
  "kobuki_fleet_msgs/BiddingOfferRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BiddingOffer-request>)))
  "Returns md5sum for a message object of type '<BiddingOffer-request>"
  "c40febe48f5b899764d93ce83ac485a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BiddingOffer-request)))
  "Returns md5sum for a message object of type 'BiddingOffer-request"
  "c40febe48f5b899764d93ce83ac485a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BiddingOffer-request>)))
  "Returns full string definition for message of type '<BiddingOffer-request>"
  (cl:format cl:nil "kobuki_fleet_msgs/Bidding bidd~%bool cancelOffer~%~%================================================================================~%MSG: kobuki_fleet_msgs/Bidding~%Header header~%string machineName~%string robotName~%uint16 cost    ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BiddingOffer-request)))
  "Returns full string definition for message of type 'BiddingOffer-request"
  (cl:format cl:nil "kobuki_fleet_msgs/Bidding bidd~%bool cancelOffer~%~%================================================================================~%MSG: kobuki_fleet_msgs/Bidding~%Header header~%string machineName~%string robotName~%uint16 cost    ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BiddingOffer-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bidd))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BiddingOffer-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BiddingOffer-request
    (cl:cons ':bidd (bidd msg))
    (cl:cons ':cancelOffer (cancelOffer msg))
))
;//! \htmlinclude BiddingOffer-response.msg.html

(cl:defclass <BiddingOffer-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BiddingOffer-response (<BiddingOffer-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BiddingOffer-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BiddingOffer-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_fleet_msgs-srv:<BiddingOffer-response> is deprecated: use kobuki_fleet_msgs-srv:BiddingOffer-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <BiddingOffer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_fleet_msgs-srv:success-val is deprecated.  Use kobuki_fleet_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BiddingOffer-response>) ostream)
  "Serializes a message object of type '<BiddingOffer-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BiddingOffer-response>) istream)
  "Deserializes a message object of type '<BiddingOffer-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BiddingOffer-response>)))
  "Returns string type for a service object of type '<BiddingOffer-response>"
  "kobuki_fleet_msgs/BiddingOfferResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BiddingOffer-response)))
  "Returns string type for a service object of type 'BiddingOffer-response"
  "kobuki_fleet_msgs/BiddingOfferResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BiddingOffer-response>)))
  "Returns md5sum for a message object of type '<BiddingOffer-response>"
  "c40febe48f5b899764d93ce83ac485a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BiddingOffer-response)))
  "Returns md5sum for a message object of type 'BiddingOffer-response"
  "c40febe48f5b899764d93ce83ac485a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BiddingOffer-response>)))
  "Returns full string definition for message of type '<BiddingOffer-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BiddingOffer-response)))
  "Returns full string definition for message of type 'BiddingOffer-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BiddingOffer-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BiddingOffer-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BiddingOffer-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BiddingOffer)))
  'BiddingOffer-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BiddingOffer)))
  'BiddingOffer-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BiddingOffer)))
  "Returns string type for a service object of type '<BiddingOffer>"
  "kobuki_fleet_msgs/BiddingOffer")