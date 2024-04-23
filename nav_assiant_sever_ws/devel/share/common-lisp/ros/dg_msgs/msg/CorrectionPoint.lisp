; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude CorrectionPoint.msg.html

(cl:defclass <CorrectionPoint> (roslisp-msg-protocol:ros-message)
  ((number
    :reader number
    :initarg :number
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (offset
    :reader offset
    :initarg :offset
    :type cl:float
    :initform 0.0)
   (custom_message
    :reader custom_message
    :initarg :custom_message
    :type cl:string
    :initform ""))
)

(cl:defclass CorrectionPoint (<CorrectionPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CorrectionPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CorrectionPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<CorrectionPoint> is deprecated: use dg_msgs-msg:CorrectionPoint instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <CorrectionPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:number-val is deprecated.  Use dg_msgs-msg:number instead.")
  (number m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <CorrectionPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:pose-val is deprecated.  Use dg_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <CorrectionPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:offset-val is deprecated.  Use dg_msgs-msg:offset instead.")
  (offset m))

(cl:ensure-generic-function 'custom_message-val :lambda-list '(m))
(cl:defmethod custom_message-val ((m <CorrectionPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:custom_message-val is deprecated.  Use dg_msgs-msg:custom_message instead.")
  (custom_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CorrectionPoint>) ostream)
  "Serializes a message object of type '<CorrectionPoint>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'number))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'custom_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'custom_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CorrectionPoint>) istream)
  "Deserializes a message object of type '<CorrectionPoint>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'number) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'offset) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CorrectionPoint>)))
  "Returns string type for a message object of type '<CorrectionPoint>"
  "dg_msgs/CorrectionPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CorrectionPoint)))
  "Returns string type for a message object of type 'CorrectionPoint"
  "dg_msgs/CorrectionPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CorrectionPoint>)))
  "Returns md5sum for a message object of type '<CorrectionPoint>"
  "c6604cbe4012a19e8a5d0b619586f1ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CorrectionPoint)))
  "Returns md5sum for a message object of type 'CorrectionPoint"
  "c6604cbe4012a19e8a5d0b619586f1ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CorrectionPoint>)))
  "Returns full string definition for message of type '<CorrectionPoint>"
  (cl:format cl:nil "string number                                   # 设备组编号~%geometry_msgs/PoseStamped pose                  # 相机目标点的pose~%float32 offset                                  # 升降柱伸缩量~%string custom_message~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CorrectionPoint)))
  "Returns full string definition for message of type 'CorrectionPoint"
  (cl:format cl:nil "string number                                   # 设备组编号~%geometry_msgs/PoseStamped pose                  # 相机目标点的pose~%float32 offset                                  # 升降柱伸缩量~%string custom_message~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CorrectionPoint>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'number))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4
     4 (cl:length (cl:slot-value msg 'custom_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CorrectionPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'CorrectionPoint
    (cl:cons ':number (number msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':offset (offset msg))
    (cl:cons ':custom_message (custom_message msg))
))
