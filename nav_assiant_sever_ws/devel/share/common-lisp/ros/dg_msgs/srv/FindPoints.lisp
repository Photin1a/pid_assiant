; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude FindPoints-request.msg.html

(cl:defclass <FindPoints-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (index
    :reader index
    :initarg :index
    :type cl:string
    :initform ""))
)

(cl:defclass FindPoints-request (<FindPoints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FindPoints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FindPoints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<FindPoints-request> is deprecated: use dg_msgs-srv:FindPoints-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <FindPoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:pose-val is deprecated.  Use dg_msgs-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <FindPoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:index-val is deprecated.  Use dg_msgs-srv:index instead.")
  (index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FindPoints-request>) ostream)
  "Serializes a message object of type '<FindPoints-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'index))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'index))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FindPoints-request>) istream)
  "Deserializes a message object of type '<FindPoints-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'index) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FindPoints-request>)))
  "Returns string type for a service object of type '<FindPoints-request>"
  "dg_msgs/FindPointsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FindPoints-request)))
  "Returns string type for a service object of type 'FindPoints-request"
  "dg_msgs/FindPointsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FindPoints-request>)))
  "Returns md5sum for a message object of type '<FindPoints-request>"
  "f54d798a96e1f9618d39f1eb022e1f57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FindPoints-request)))
  "Returns md5sum for a message object of type 'FindPoints-request"
  "f54d798a96e1f9618d39f1eb022e1f57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FindPoints-request>)))
  "Returns full string definition for message of type '<FindPoints-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose~%string index~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FindPoints-request)))
  "Returns full string definition for message of type 'FindPoints-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose~%string index~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FindPoints-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4 (cl:length (cl:slot-value msg 'index))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FindPoints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FindPoints-request
    (cl:cons ':pose (pose msg))
    (cl:cons ':index (index msg))
))
;//! \htmlinclude FindPoints-response.msg.html

(cl:defclass <FindPoints-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass FindPoints-response (<FindPoints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FindPoints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FindPoints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<FindPoints-response> is deprecated: use dg_msgs-srv:FindPoints-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <FindPoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:status-val is deprecated.  Use dg_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FindPoints-response>) ostream)
  "Serializes a message object of type '<FindPoints-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FindPoints-response>) istream)
  "Deserializes a message object of type '<FindPoints-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FindPoints-response>)))
  "Returns string type for a service object of type '<FindPoints-response>"
  "dg_msgs/FindPointsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FindPoints-response)))
  "Returns string type for a service object of type 'FindPoints-response"
  "dg_msgs/FindPointsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FindPoints-response>)))
  "Returns md5sum for a message object of type '<FindPoints-response>"
  "f54d798a96e1f9618d39f1eb022e1f57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FindPoints-response)))
  "Returns md5sum for a message object of type 'FindPoints-response"
  "f54d798a96e1f9618d39f1eb022e1f57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FindPoints-response>)))
  "Returns full string definition for message of type '<FindPoints-response>"
  (cl:format cl:nil "bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FindPoints-response)))
  "Returns full string definition for message of type 'FindPoints-response"
  (cl:format cl:nil "bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FindPoints-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FindPoints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FindPoints-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FindPoints)))
  'FindPoints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FindPoints)))
  'FindPoints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FindPoints)))
  "Returns string type for a service object of type '<FindPoints>"
  "dg_msgs/FindPoints")