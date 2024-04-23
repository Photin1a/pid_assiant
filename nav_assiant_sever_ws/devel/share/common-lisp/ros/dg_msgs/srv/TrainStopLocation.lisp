; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude TrainStopLocation-request.msg.html

(cl:defclass <TrainStopLocation-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TrainStopLocation-request (<TrainStopLocation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrainStopLocation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrainStopLocation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<TrainStopLocation-request> is deprecated: use dg_msgs-srv:TrainStopLocation-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrainStopLocation-request>) ostream)
  "Serializes a message object of type '<TrainStopLocation-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrainStopLocation-request>) istream)
  "Deserializes a message object of type '<TrainStopLocation-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrainStopLocation-request>)))
  "Returns string type for a service object of type '<TrainStopLocation-request>"
  "dg_msgs/TrainStopLocationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrainStopLocation-request)))
  "Returns string type for a service object of type 'TrainStopLocation-request"
  "dg_msgs/TrainStopLocationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrainStopLocation-request>)))
  "Returns md5sum for a message object of type '<TrainStopLocation-request>"
  "1bfaf8027cbdae005d41220561672628")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrainStopLocation-request)))
  "Returns md5sum for a message object of type 'TrainStopLocation-request"
  "1bfaf8027cbdae005d41220561672628")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrainStopLocation-request>)))
  "Returns full string definition for message of type '<TrainStopLocation-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrainStopLocation-request)))
  "Returns full string definition for message of type 'TrainStopLocation-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrainStopLocation-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrainStopLocation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TrainStopLocation-request
))
;//! \htmlinclude TrainStopLocation-response.msg.html

(cl:defclass <TrainStopLocation-response> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (custom_message
    :reader custom_message
    :initarg :custom_message
    :type cl:string
    :initform ""))
)

(cl:defclass TrainStopLocation-response (<TrainStopLocation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrainStopLocation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrainStopLocation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<TrainStopLocation-response> is deprecated: use dg_msgs-srv:TrainStopLocation-response instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <TrainStopLocation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:pose-val is deprecated.  Use dg_msgs-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'custom_message-val :lambda-list '(m))
(cl:defmethod custom_message-val ((m <TrainStopLocation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:custom_message-val is deprecated.  Use dg_msgs-srv:custom_message instead.")
  (custom_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrainStopLocation-response>) ostream)
  "Serializes a message object of type '<TrainStopLocation-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'custom_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'custom_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrainStopLocation-response>) istream)
  "Deserializes a message object of type '<TrainStopLocation-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'custom_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'custom_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrainStopLocation-response>)))
  "Returns string type for a service object of type '<TrainStopLocation-response>"
  "dg_msgs/TrainStopLocationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrainStopLocation-response)))
  "Returns string type for a service object of type 'TrainStopLocation-response"
  "dg_msgs/TrainStopLocationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrainStopLocation-response>)))
  "Returns md5sum for a message object of type '<TrainStopLocation-response>"
  "1bfaf8027cbdae005d41220561672628")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrainStopLocation-response)))
  "Returns md5sum for a message object of type 'TrainStopLocation-response"
  "1bfaf8027cbdae005d41220561672628")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrainStopLocation-response>)))
  "Returns full string definition for message of type '<TrainStopLocation-response>"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose~%string custom_message~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrainStopLocation-response)))
  "Returns full string definition for message of type 'TrainStopLocation-response"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose~%string custom_message~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrainStopLocation-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4 (cl:length (cl:slot-value msg 'custom_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrainStopLocation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TrainStopLocation-response
    (cl:cons ':pose (pose msg))
    (cl:cons ':custom_message (custom_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TrainStopLocation)))
  'TrainStopLocation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TrainStopLocation)))
  'TrainStopLocation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrainStopLocation)))
  "Returns string type for a service object of type '<TrainStopLocation>"
  "dg_msgs/TrainStopLocation")