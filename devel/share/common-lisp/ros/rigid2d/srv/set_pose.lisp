; Auto-generated. Do not edit!


(cl:in-package rigid2d-srv)


;//! \htmlinclude set_pose-request.msg.html

(cl:defclass <set_pose-request> (roslisp-msg-protocol:ros-message)
  ((theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0)
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass set_pose-request (<set_pose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_pose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_pose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rigid2d-srv:<set_pose-request> is deprecated: use rigid2d-srv:set_pose-request instead.")))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <set_pose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rigid2d-srv:theta-val is deprecated.  Use rigid2d-srv:theta instead.")
  (theta m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <set_pose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rigid2d-srv:x-val is deprecated.  Use rigid2d-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <set_pose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rigid2d-srv:y-val is deprecated.  Use rigid2d-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_pose-request>) ostream)
  "Serializes a message object of type '<set_pose-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_pose-request>) istream)
  "Deserializes a message object of type '<set_pose-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_pose-request>)))
  "Returns string type for a service object of type '<set_pose-request>"
  "rigid2d/set_poseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_pose-request)))
  "Returns string type for a service object of type 'set_pose-request"
  "rigid2d/set_poseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_pose-request>)))
  "Returns md5sum for a message object of type '<set_pose-request>"
  "c5432c85aa30571647ef4a6b0e1b56d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_pose-request)))
  "Returns md5sum for a message object of type 'set_pose-request"
  "c5432c85aa30571647ef4a6b0e1b56d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_pose-request>)))
  "Returns full string definition for message of type '<set_pose-request>"
  (cl:format cl:nil "# sets pose of robot~%# theta (angular position) x/y (position)~%# set_pose_state is true if the new pose service has been activated~%float32 theta~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_pose-request)))
  "Returns full string definition for message of type 'set_pose-request"
  (cl:format cl:nil "# sets pose of robot~%# theta (angular position) x/y (position)~%# set_pose_state is true if the new pose service has been activated~%float32 theta~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_pose-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_pose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_pose-request
    (cl:cons ':theta (theta msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
;//! \htmlinclude set_pose-response.msg.html

(cl:defclass <set_pose-response> (roslisp-msg-protocol:ros-message)
  ((set_pose_state
    :reader set_pose_state
    :initarg :set_pose_state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_pose-response (<set_pose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_pose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_pose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rigid2d-srv:<set_pose-response> is deprecated: use rigid2d-srv:set_pose-response instead.")))

(cl:ensure-generic-function 'set_pose_state-val :lambda-list '(m))
(cl:defmethod set_pose_state-val ((m <set_pose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rigid2d-srv:set_pose_state-val is deprecated.  Use rigid2d-srv:set_pose_state instead.")
  (set_pose_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_pose-response>) ostream)
  "Serializes a message object of type '<set_pose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_pose_state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_pose-response>) istream)
  "Deserializes a message object of type '<set_pose-response>"
    (cl:setf (cl:slot-value msg 'set_pose_state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_pose-response>)))
  "Returns string type for a service object of type '<set_pose-response>"
  "rigid2d/set_poseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_pose-response)))
  "Returns string type for a service object of type 'set_pose-response"
  "rigid2d/set_poseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_pose-response>)))
  "Returns md5sum for a message object of type '<set_pose-response>"
  "c5432c85aa30571647ef4a6b0e1b56d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_pose-response)))
  "Returns md5sum for a message object of type 'set_pose-response"
  "c5432c85aa30571647ef4a6b0e1b56d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_pose-response>)))
  "Returns full string definition for message of type '<set_pose-response>"
  (cl:format cl:nil "bool set_pose_state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_pose-response)))
  "Returns full string definition for message of type 'set_pose-response"
  (cl:format cl:nil "bool set_pose_state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_pose-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_pose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_pose-response
    (cl:cons ':set_pose_state (set_pose_state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_pose)))
  'set_pose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_pose)))
  'set_pose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_pose)))
  "Returns string type for a service object of type '<set_pose>"
  "rigid2d/set_pose")