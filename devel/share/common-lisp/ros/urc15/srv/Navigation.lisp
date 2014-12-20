; Auto-generated. Do not edit!


(cl:in-package urc15-srv)


;//! \htmlinclude Navigation-request.msg.html

(cl:defclass <Navigation-request> (roslisp-msg-protocol:ros-message)
  ((sendSatCount
    :reader sendSatCount
    :initarg :sendSatCount
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Navigation-request (<Navigation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Navigation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Navigation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name urc15-srv:<Navigation-request> is deprecated: use urc15-srv:Navigation-request instead.")))

(cl:ensure-generic-function 'sendSatCount-val :lambda-list '(m))
(cl:defmethod sendSatCount-val ((m <Navigation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader urc15-srv:sendSatCount-val is deprecated.  Use urc15-srv:sendSatCount instead.")
  (sendSatCount m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Navigation-request>) ostream)
  "Serializes a message object of type '<Navigation-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sendSatCount)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Navigation-request>) istream)
  "Deserializes a message object of type '<Navigation-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sendSatCount)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Navigation-request>)))
  "Returns string type for a service object of type '<Navigation-request>"
  "urc15/NavigationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Navigation-request)))
  "Returns string type for a service object of type 'Navigation-request"
  "urc15/NavigationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Navigation-request>)))
  "Returns md5sum for a message object of type '<Navigation-request>"
  "215b6f8f82b4e42b58968c251670b4dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Navigation-request)))
  "Returns md5sum for a message object of type 'Navigation-request"
  "215b6f8f82b4e42b58968c251670b4dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Navigation-request>)))
  "Returns full string definition for message of type '<Navigation-request>"
  (cl:format cl:nil "uint8 sendSatCount~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Navigation-request)))
  "Returns full string definition for message of type 'Navigation-request"
  (cl:format cl:nil "uint8 sendSatCount~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Navigation-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Navigation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Navigation-request
    (cl:cons ':sendSatCount (sendSatCount msg))
))
;//! \htmlinclude Navigation-response.msg.html

(cl:defclass <Navigation-response> (roslisp-msg-protocol:ros-message)
  ((satCount
    :reader satCount
    :initarg :satCount
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Navigation-response (<Navigation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Navigation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Navigation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name urc15-srv:<Navigation-response> is deprecated: use urc15-srv:Navigation-response instead.")))

(cl:ensure-generic-function 'satCount-val :lambda-list '(m))
(cl:defmethod satCount-val ((m <Navigation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader urc15-srv:satCount-val is deprecated.  Use urc15-srv:satCount instead.")
  (satCount m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Navigation-response>) ostream)
  "Serializes a message object of type '<Navigation-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'satCount)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Navigation-response>) istream)
  "Deserializes a message object of type '<Navigation-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'satCount)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Navigation-response>)))
  "Returns string type for a service object of type '<Navigation-response>"
  "urc15/NavigationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Navigation-response)))
  "Returns string type for a service object of type 'Navigation-response"
  "urc15/NavigationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Navigation-response>)))
  "Returns md5sum for a message object of type '<Navigation-response>"
  "215b6f8f82b4e42b58968c251670b4dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Navigation-response)))
  "Returns md5sum for a message object of type 'Navigation-response"
  "215b6f8f82b4e42b58968c251670b4dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Navigation-response>)))
  "Returns full string definition for message of type '<Navigation-response>"
  (cl:format cl:nil "uint8 satCount~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Navigation-response)))
  "Returns full string definition for message of type 'Navigation-response"
  (cl:format cl:nil "uint8 satCount~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Navigation-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Navigation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Navigation-response
    (cl:cons ':satCount (satCount msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Navigation)))
  'Navigation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Navigation)))
  'Navigation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Navigation)))
  "Returns string type for a service object of type '<Navigation>"
  "urc15/Navigation")