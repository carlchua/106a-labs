; Auto-generated. Do not edit!


(cl:in-package turtle_patrol-srv)


;//! \htmlinclude Patrol-request.msg.html

(cl:defclass <Patrol-request> (roslisp-msg-protocol:ros-message)
  ((vel
    :reader vel
    :initarg :vel
    :type cl:float
    :initform 0.0)
   (omega
    :reader omega
    :initarg :omega
    :type cl:float
    :initform 0.0))
)

(cl:defclass Patrol-request (<Patrol-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Patrol-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Patrol-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtle_patrol-srv:<Patrol-request> is deprecated: use turtle_patrol-srv:Patrol-request instead.")))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <Patrol-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_patrol-srv:vel-val is deprecated.  Use turtle_patrol-srv:vel instead.")
  (vel m))

(cl:ensure-generic-function 'omega-val :lambda-list '(m))
(cl:defmethod omega-val ((m <Patrol-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_patrol-srv:omega-val is deprecated.  Use turtle_patrol-srv:omega instead.")
  (omega m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Patrol-request>) ostream)
  "Serializes a message object of type '<Patrol-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'omega))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Patrol-request>) istream)
  "Deserializes a message object of type '<Patrol-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'omega) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Patrol-request>)))
  "Returns string type for a service object of type '<Patrol-request>"
  "turtle_patrol/PatrolRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Patrol-request)))
  "Returns string type for a service object of type 'Patrol-request"
  "turtle_patrol/PatrolRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Patrol-request>)))
  "Returns md5sum for a message object of type '<Patrol-request>"
  "081833b8303250abb8d3090d1d3e17e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Patrol-request)))
  "Returns md5sum for a message object of type 'Patrol-request"
  "081833b8303250abb8d3090d1d3e17e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Patrol-request>)))
  "Returns full string definition for message of type '<Patrol-request>"
  (cl:format cl:nil "~%float32 vel~%float32 omega~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Patrol-request)))
  "Returns full string definition for message of type 'Patrol-request"
  (cl:format cl:nil "~%float32 vel~%float32 omega~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Patrol-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Patrol-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Patrol-request
    (cl:cons ':vel (vel msg))
    (cl:cons ':omega (omega msg))
))
;//! \htmlinclude Patrol-response.msg.html

(cl:defclass <Patrol-response> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
)

(cl:defclass Patrol-response (<Patrol-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Patrol-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Patrol-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtle_patrol-srv:<Patrol-response> is deprecated: use turtle_patrol-srv:Patrol-response instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <Patrol-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_patrol-srv:cmd-val is deprecated.  Use turtle_patrol-srv:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Patrol-response>) ostream)
  "Serializes a message object of type '<Patrol-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cmd) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Patrol-response>) istream)
  "Deserializes a message object of type '<Patrol-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cmd) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Patrol-response>)))
  "Returns string type for a service object of type '<Patrol-response>"
  "turtle_patrol/PatrolResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Patrol-response)))
  "Returns string type for a service object of type 'Patrol-response"
  "turtle_patrol/PatrolResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Patrol-response>)))
  "Returns md5sum for a message object of type '<Patrol-response>"
  "081833b8303250abb8d3090d1d3e17e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Patrol-response)))
  "Returns md5sum for a message object of type 'Patrol-response"
  "081833b8303250abb8d3090d1d3e17e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Patrol-response>)))
  "Returns full string definition for message of type '<Patrol-response>"
  (cl:format cl:nil "~%geometry_msgs/Twist cmd~%~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Patrol-response)))
  "Returns full string definition for message of type 'Patrol-response"
  (cl:format cl:nil "~%geometry_msgs/Twist cmd~%~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Patrol-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cmd))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Patrol-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Patrol-response
    (cl:cons ':cmd (cmd msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Patrol)))
  'Patrol-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Patrol)))
  'Patrol-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Patrol)))
  "Returns string type for a service object of type '<Patrol>"
  "turtle_patrol/Patrol")