; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude XGPillerCenter-request.msg.html

(cl:defclass <XGPillerCenter-request> (roslisp-msg-protocol:ros-message)
  ((detect_dis
    :reader detect_dis
    :initarg :detect_dis
    :type cl:float
    :initform 0.0))
)

(cl:defclass XGPillerCenter-request (<XGPillerCenter-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <XGPillerCenter-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'XGPillerCenter-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<XGPillerCenter-request> is deprecated: use dg_msgs-srv:XGPillerCenter-request instead.")))

(cl:ensure-generic-function 'detect_dis-val :lambda-list '(m))
(cl:defmethod detect_dis-val ((m <XGPillerCenter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:detect_dis-val is deprecated.  Use dg_msgs-srv:detect_dis instead.")
  (detect_dis m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <XGPillerCenter-request>) ostream)
  "Serializes a message object of type '<XGPillerCenter-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'detect_dis))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <XGPillerCenter-request>) istream)
  "Deserializes a message object of type '<XGPillerCenter-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'detect_dis) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<XGPillerCenter-request>)))
  "Returns string type for a service object of type '<XGPillerCenter-request>"
  "dg_msgs/XGPillerCenterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XGPillerCenter-request)))
  "Returns string type for a service object of type 'XGPillerCenter-request"
  "dg_msgs/XGPillerCenterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<XGPillerCenter-request>)))
  "Returns md5sum for a message object of type '<XGPillerCenter-request>"
  "44a8d4b0b3e7baca9bbc0e508470774d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'XGPillerCenter-request)))
  "Returns md5sum for a message object of type 'XGPillerCenter-request"
  "44a8d4b0b3e7baca9bbc0e508470774d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<XGPillerCenter-request>)))
  "Returns full string definition for message of type '<XGPillerCenter-request>"
  (cl:format cl:nil "float32 detect_dis          # 距离motion_link的检测距离~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'XGPillerCenter-request)))
  "Returns full string definition for message of type 'XGPillerCenter-request"
  (cl:format cl:nil "float32 detect_dis          # 距离motion_link的检测距离~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <XGPillerCenter-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <XGPillerCenter-request>))
  "Converts a ROS message object to a list"
  (cl:list 'XGPillerCenter-request
    (cl:cons ':detect_dis (detect_dis msg))
))
;//! \htmlinclude XGPillerCenter-response.msg.html

(cl:defclass <XGPillerCenter-response> (roslisp-msg-protocol:ros-message)
  ((confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (piller_stamped
    :reader piller_stamped
    :initarg :piller_stamped
    :type (cl:vector geometry_msgs-msg:TransformStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:TransformStamped :initial-element (cl:make-instance 'geometry_msgs-msg:TransformStamped)))
   (state_info
    :reader state_info
    :initarg :state_info
    :type dg_msgs-msg:UniversalStateInfo
    :initform (cl:make-instance 'dg_msgs-msg:UniversalStateInfo)))
)

(cl:defclass XGPillerCenter-response (<XGPillerCenter-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <XGPillerCenter-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'XGPillerCenter-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<XGPillerCenter-response> is deprecated: use dg_msgs-srv:XGPillerCenter-response instead.")))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <XGPillerCenter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:confidence-val is deprecated.  Use dg_msgs-srv:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'piller_stamped-val :lambda-list '(m))
(cl:defmethod piller_stamped-val ((m <XGPillerCenter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:piller_stamped-val is deprecated.  Use dg_msgs-srv:piller_stamped instead.")
  (piller_stamped m))

(cl:ensure-generic-function 'state_info-val :lambda-list '(m))
(cl:defmethod state_info-val ((m <XGPillerCenter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:state_info-val is deprecated.  Use dg_msgs-srv:state_info instead.")
  (state_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <XGPillerCenter-response>) ostream)
  "Serializes a message object of type '<XGPillerCenter-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'piller_stamped))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'piller_stamped))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <XGPillerCenter-response>) istream)
  "Deserializes a message object of type '<XGPillerCenter-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'piller_stamped) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'piller_stamped)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:TransformStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<XGPillerCenter-response>)))
  "Returns string type for a service object of type '<XGPillerCenter-response>"
  "dg_msgs/XGPillerCenterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XGPillerCenter-response)))
  "Returns string type for a service object of type 'XGPillerCenter-response"
  "dg_msgs/XGPillerCenterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<XGPillerCenter-response>)))
  "Returns md5sum for a message object of type '<XGPillerCenter-response>"
  "44a8d4b0b3e7baca9bbc0e508470774d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'XGPillerCenter-response)))
  "Returns md5sum for a message object of type 'XGPillerCenter-response"
  "44a8d4b0b3e7baca9bbc0e508470774d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<XGPillerCenter-response>)))
  "Returns full string definition for message of type '<XGPillerCenter-response>"
  (cl:format cl:nil "float32 confidence          # 仙工底盘对当前位置的置信度~%geometry_msgs/TransformStamped[] piller_stamped~%UniversalStateInfo state_info~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'XGPillerCenter-response)))
  "Returns full string definition for message of type 'XGPillerCenter-response"
  (cl:format cl:nil "float32 confidence          # 仙工底盘对当前位置的置信度~%geometry_msgs/TransformStamped[] piller_stamped~%UniversalStateInfo state_info~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <XGPillerCenter-response>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'piller_stamped) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <XGPillerCenter-response>))
  "Converts a ROS message object to a list"
  (cl:list 'XGPillerCenter-response
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':piller_stamped (piller_stamped msg))
    (cl:cons ':state_info (state_info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'XGPillerCenter)))
  'XGPillerCenter-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'XGPillerCenter)))
  'XGPillerCenter-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XGPillerCenter)))
  "Returns string type for a service object of type '<XGPillerCenter>"
  "dg_msgs/XGPillerCenter")