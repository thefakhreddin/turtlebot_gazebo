; Auto-generated. Do not edit!


(cl:in-package nuturtle_robot-srv)


;//! \htmlinclude start-request.msg.html

(cl:defclass <start-request> (roslisp-msg-protocol:ros-message)
  ((direction
    :reader direction
    :initarg :direction
    :type cl:string
    :initform ""))
)

(cl:defclass start-request (<start-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <start-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'start-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nuturtle_robot-srv:<start-request> is deprecated: use nuturtle_robot-srv:start-request instead.")))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <start-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nuturtle_robot-srv:direction-val is deprecated.  Use nuturtle_robot-srv:direction instead.")
  (direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <start-request>) ostream)
  "Serializes a message object of type '<start-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'direction))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <start-request>) istream)
  "Deserializes a message object of type '<start-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'direction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<start-request>)))
  "Returns string type for a service object of type '<start-request>"
  "nuturtle_robot/startRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'start-request)))
  "Returns string type for a service object of type 'start-request"
  "nuturtle_robot/startRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<start-request>)))
  "Returns md5sum for a message object of type '<start-request>"
  "e743aa0e8f3e06b0783c4c788c47711b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'start-request)))
  "Returns md5sum for a message object of type 'start-request"
  "e743aa0e8f3e06b0783c4c788c47711b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<start-request>)))
  "Returns full string definition for message of type '<start-request>"
  (cl:format cl:nil "# set the direction of the rotation~%# direction is either clockwise or counter-clockwise~%# set_pose_state is true when the direction is established ~%string direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'start-request)))
  "Returns full string definition for message of type 'start-request"
  (cl:format cl:nil "# set the direction of the rotation~%# direction is either clockwise or counter-clockwise~%# set_pose_state is true when the direction is established ~%string direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <start-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'direction))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <start-request>))
  "Converts a ROS message object to a list"
  (cl:list 'start-request
    (cl:cons ':direction (direction msg))
))
;//! \htmlinclude start-response.msg.html

(cl:defclass <start-response> (roslisp-msg-protocol:ros-message)
  ((direction_set
    :reader direction_set
    :initarg :direction_set
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass start-response (<start-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <start-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'start-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nuturtle_robot-srv:<start-response> is deprecated: use nuturtle_robot-srv:start-response instead.")))

(cl:ensure-generic-function 'direction_set-val :lambda-list '(m))
(cl:defmethod direction_set-val ((m <start-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nuturtle_robot-srv:direction_set-val is deprecated.  Use nuturtle_robot-srv:direction_set instead.")
  (direction_set m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <start-response>) ostream)
  "Serializes a message object of type '<start-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'direction_set) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <start-response>) istream)
  "Deserializes a message object of type '<start-response>"
    (cl:setf (cl:slot-value msg 'direction_set) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<start-response>)))
  "Returns string type for a service object of type '<start-response>"
  "nuturtle_robot/startResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'start-response)))
  "Returns string type for a service object of type 'start-response"
  "nuturtle_robot/startResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<start-response>)))
  "Returns md5sum for a message object of type '<start-response>"
  "e743aa0e8f3e06b0783c4c788c47711b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'start-response)))
  "Returns md5sum for a message object of type 'start-response"
  "e743aa0e8f3e06b0783c4c788c47711b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<start-response>)))
  "Returns full string definition for message of type '<start-response>"
  (cl:format cl:nil "bool direction_set~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'start-response)))
  "Returns full string definition for message of type 'start-response"
  (cl:format cl:nil "bool direction_set~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <start-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <start-response>))
  "Converts a ROS message object to a list"
  (cl:list 'start-response
    (cl:cons ':direction_set (direction_set msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'start)))
  'start-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'start)))
  'start-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'start)))
  "Returns string type for a service object of type '<start>"
  "nuturtle_robot/start")