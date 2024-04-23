; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude Localization3D.msg.html

(cl:defclass <Localization3D> (roslisp-msg-protocol:ros-message)
  ((localization
    :reader localization
    :initarg :localization
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (delay_ms
    :reader delay_ms
    :initarg :delay_ms
    :type cl:float
    :initform 0.0))
)

(cl:defclass Localization3D (<Localization3D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Localization3D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Localization3D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<Localization3D> is deprecated: use dg_msgs-msg:Localization3D instead.")))

(cl:ensure-generic-function 'localization-val :lambda-list '(m))
(cl:defmethod localization-val ((m <Localization3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:localization-val is deprecated.  Use dg_msgs-msg:localization instead.")
  (localization m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <Localization3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:confidence-val is deprecated.  Use dg_msgs-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'delay_ms-val :lambda-list '(m))
(cl:defmethod delay_ms-val ((m <Localization3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:delay_ms-val is deprecated.  Use dg_msgs-msg:delay_ms instead.")
  (delay_ms m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Localization3D>) ostream)
  "Serializes a message object of type '<Localization3D>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'localization) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'delay_ms))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Localization3D>) istream)
  "Deserializes a message object of type '<Localization3D>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'localization) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'delay_ms) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Localization3D>)))
  "Returns string type for a message object of type '<Localization3D>"
  "dg_msgs/Localization3D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Localization3D)))
  "Returns string type for a message object of type 'Localization3D"
  "dg_msgs/Localization3D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Localization3D>)))
  "Returns md5sum for a message object of type '<Localization3D>"
  "ce50be351436d14407b6f3d3588249ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Localization3D)))
  "Returns md5sum for a message object of type 'Localization3D"
  "ce50be351436d14407b6f3d3588249ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Localization3D>)))
  "Returns full string definition for message of type '<Localization3D>"
  (cl:format cl:nil "# 3D导航用的定位信息~%geometry_msgs/PoseStamped localization              # 位置姿态~%float32 confidence                                  # 定位置信度~%float32 delay_ms                                    # 定位延时~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Localization3D)))
  "Returns full string definition for message of type 'Localization3D"
  (cl:format cl:nil "# 3D导航用的定位信息~%geometry_msgs/PoseStamped localization              # 位置姿态~%float32 confidence                                  # 定位置信度~%float32 delay_ms                                    # 定位延时~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Localization3D>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'localization))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Localization3D>))
  "Converts a ROS message object to a list"
  (cl:list 'Localization3D
    (cl:cons ':localization (localization msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':delay_ms (delay_ms msg))
))
