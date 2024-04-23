; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude XGLandMarkSearch-request.msg.html

(cl:defclass <XGLandMarkSearch-request> (roslisp-msg-protocol:ros-message)
  ((camear_factory_start
    :reader camear_factory_start
    :initarg :camear_factory_start
    :type geometry_msgs-msg:PoseArray
    :initform (cl:make-instance 'geometry_msgs-msg:PoseArray))
   (search_radius
    :reader search_radius
    :initarg :search_radius
    :type cl:float
    :initform 0.0))
)

(cl:defclass XGLandMarkSearch-request (<XGLandMarkSearch-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <XGLandMarkSearch-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'XGLandMarkSearch-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<XGLandMarkSearch-request> is deprecated: use dg_msgs-srv:XGLandMarkSearch-request instead.")))

(cl:ensure-generic-function 'camear_factory_start-val :lambda-list '(m))
(cl:defmethod camear_factory_start-val ((m <XGLandMarkSearch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:camear_factory_start-val is deprecated.  Use dg_msgs-srv:camear_factory_start instead.")
  (camear_factory_start m))

(cl:ensure-generic-function 'search_radius-val :lambda-list '(m))
(cl:defmethod search_radius-val ((m <XGLandMarkSearch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:search_radius-val is deprecated.  Use dg_msgs-srv:search_radius instead.")
  (search_radius m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <XGLandMarkSearch-request>) ostream)
  "Serializes a message object of type '<XGLandMarkSearch-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camear_factory_start) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'search_radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <XGLandMarkSearch-request>) istream)
  "Deserializes a message object of type '<XGLandMarkSearch-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camear_factory_start) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'search_radius) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<XGLandMarkSearch-request>)))
  "Returns string type for a service object of type '<XGLandMarkSearch-request>"
  "dg_msgs/XGLandMarkSearchRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XGLandMarkSearch-request)))
  "Returns string type for a service object of type 'XGLandMarkSearch-request"
  "dg_msgs/XGLandMarkSearchRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<XGLandMarkSearch-request>)))
  "Returns md5sum for a message object of type '<XGLandMarkSearch-request>"
  "7434ec9527fdaa3278286227ab996863")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'XGLandMarkSearch-request)))
  "Returns md5sum for a message object of type 'XGLandMarkSearch-request"
  "7434ec9527fdaa3278286227ab996863")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<XGLandMarkSearch-request>)))
  "Returns full string definition for message of type '<XGLandMarkSearch-request>"
  (cl:format cl:nil "# 仙工站点搜索 - 欧式距离1.6m(包含z)+并集~%geometry_msgs/PoseArray camear_factory_start            # 需要搜索的pose~%float32 search_radius                                   # 搜索半径~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'XGLandMarkSearch-request)))
  "Returns full string definition for message of type 'XGLandMarkSearch-request"
  (cl:format cl:nil "# 仙工站点搜索 - 欧式距离1.6m(包含z)+并集~%geometry_msgs/PoseArray camear_factory_start            # 需要搜索的pose~%float32 search_radius                                   # 搜索半径~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <XGLandMarkSearch-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camear_factory_start))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <XGLandMarkSearch-request>))
  "Converts a ROS message object to a list"
  (cl:list 'XGLandMarkSearch-request
    (cl:cons ':camear_factory_start (camear_factory_start msg))
    (cl:cons ':search_radius (search_radius msg))
))
;//! \htmlinclude XGLandMarkSearch-response.msg.html

(cl:defclass <XGLandMarkSearch-response> (roslisp-msg-protocol:ros-message)
  ((motion_link_factory_start
    :reader motion_link_factory_start
    :initarg :motion_link_factory_start
    :type geometry_msgs-msg:PoseArray
    :initform (cl:make-instance 'geometry_msgs-msg:PoseArray)))
)

(cl:defclass XGLandMarkSearch-response (<XGLandMarkSearch-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <XGLandMarkSearch-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'XGLandMarkSearch-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<XGLandMarkSearch-response> is deprecated: use dg_msgs-srv:XGLandMarkSearch-response instead.")))

(cl:ensure-generic-function 'motion_link_factory_start-val :lambda-list '(m))
(cl:defmethod motion_link_factory_start-val ((m <XGLandMarkSearch-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:motion_link_factory_start-val is deprecated.  Use dg_msgs-srv:motion_link_factory_start instead.")
  (motion_link_factory_start m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <XGLandMarkSearch-response>) ostream)
  "Serializes a message object of type '<XGLandMarkSearch-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'motion_link_factory_start) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <XGLandMarkSearch-response>) istream)
  "Deserializes a message object of type '<XGLandMarkSearch-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'motion_link_factory_start) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<XGLandMarkSearch-response>)))
  "Returns string type for a service object of type '<XGLandMarkSearch-response>"
  "dg_msgs/XGLandMarkSearchResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XGLandMarkSearch-response)))
  "Returns string type for a service object of type 'XGLandMarkSearch-response"
  "dg_msgs/XGLandMarkSearchResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<XGLandMarkSearch-response>)))
  "Returns md5sum for a message object of type '<XGLandMarkSearch-response>"
  "7434ec9527fdaa3278286227ab996863")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'XGLandMarkSearch-response)))
  "Returns md5sum for a message object of type 'XGLandMarkSearch-response"
  "7434ec9527fdaa3278286227ab996863")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<XGLandMarkSearch-response>)))
  "Returns full string definition for message of type '<XGLandMarkSearch-response>"
  (cl:format cl:nil "geometry_msgs/PoseArray motion_link_factory_start       # 搜索到的pose~%~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'XGLandMarkSearch-response)))
  "Returns full string definition for message of type 'XGLandMarkSearch-response"
  (cl:format cl:nil "geometry_msgs/PoseArray motion_link_factory_start       # 搜索到的pose~%~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <XGLandMarkSearch-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'motion_link_factory_start))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <XGLandMarkSearch-response>))
  "Converts a ROS message object to a list"
  (cl:list 'XGLandMarkSearch-response
    (cl:cons ':motion_link_factory_start (motion_link_factory_start msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'XGLandMarkSearch)))
  'XGLandMarkSearch-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'XGLandMarkSearch)))
  'XGLandMarkSearch-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XGLandMarkSearch)))
  "Returns string type for a service object of type '<XGLandMarkSearch>"
  "dg_msgs/XGLandMarkSearch")