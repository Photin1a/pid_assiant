; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude XGAuxUtility-request.msg.html

(cl:defclass <XGAuxUtility-request> (roslisp-msg-protocol:ros-message)
  ((reg_pose
    :reader reg_pose
    :initarg :reg_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (teach_pose
    :reader teach_pose
    :initarg :teach_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass XGAuxUtility-request (<XGAuxUtility-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <XGAuxUtility-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'XGAuxUtility-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<XGAuxUtility-request> is deprecated: use dg_msgs-srv:XGAuxUtility-request instead.")))

(cl:ensure-generic-function 'reg_pose-val :lambda-list '(m))
(cl:defmethod reg_pose-val ((m <XGAuxUtility-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:reg_pose-val is deprecated.  Use dg_msgs-srv:reg_pose instead.")
  (reg_pose m))

(cl:ensure-generic-function 'teach_pose-val :lambda-list '(m))
(cl:defmethod teach_pose-val ((m <XGAuxUtility-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:teach_pose-val is deprecated.  Use dg_msgs-srv:teach_pose instead.")
  (teach_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <XGAuxUtility-request>) ostream)
  "Serializes a message object of type '<XGAuxUtility-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reg_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'teach_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <XGAuxUtility-request>) istream)
  "Deserializes a message object of type '<XGAuxUtility-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reg_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'teach_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<XGAuxUtility-request>)))
  "Returns string type for a service object of type '<XGAuxUtility-request>"
  "dg_msgs/XGAuxUtilityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XGAuxUtility-request)))
  "Returns string type for a service object of type 'XGAuxUtility-request"
  "dg_msgs/XGAuxUtilityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<XGAuxUtility-request>)))
  "Returns md5sum for a message object of type '<XGAuxUtility-request>"
  "8f88c347ee9cc9a18c8541916b5018b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'XGAuxUtility-request)))
  "Returns md5sum for a message object of type 'XGAuxUtility-request"
  "8f88c347ee9cc9a18c8541916b5018b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<XGAuxUtility-request>)))
  "Returns full string definition for message of type '<XGAuxUtility-request>"
  (cl:format cl:nil "# 仙工底盘的辅助服务，用于中心节点和底盘之间交互媒介~%~%# 内容一：用于转化的pose~%geometry_msgs/PoseStamped reg_pose          # 配准结果pose，从中心节点处传入~%geometry_msgs/PoseStamped teach_pose        # 当时示校时的pose，从中心节点传入 ~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'XGAuxUtility-request)))
  "Returns full string definition for message of type 'XGAuxUtility-request"
  (cl:format cl:nil "# 仙工底盘的辅助服务，用于中心节点和底盘之间交互媒介~%~%# 内容一：用于转化的pose~%geometry_msgs/PoseStamped reg_pose          # 配准结果pose，从中心节点处传入~%geometry_msgs/PoseStamped teach_pose        # 当时示校时的pose，从中心节点传入 ~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <XGAuxUtility-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reg_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'teach_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <XGAuxUtility-request>))
  "Converts a ROS message object to a list"
  (cl:list 'XGAuxUtility-request
    (cl:cons ':reg_pose (reg_pose msg))
    (cl:cons ':teach_pose (teach_pose msg))
))
;//! \htmlinclude XGAuxUtility-response.msg.html

(cl:defclass <XGAuxUtility-response> (roslisp-msg-protocol:ros-message)
  ((state_info
    :reader state_info
    :initarg :state_info
    :type dg_msgs-msg:UniversalStateInfo
    :initform (cl:make-instance 'dg_msgs-msg:UniversalStateInfo)))
)

(cl:defclass XGAuxUtility-response (<XGAuxUtility-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <XGAuxUtility-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'XGAuxUtility-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<XGAuxUtility-response> is deprecated: use dg_msgs-srv:XGAuxUtility-response instead.")))

(cl:ensure-generic-function 'state_info-val :lambda-list '(m))
(cl:defmethod state_info-val ((m <XGAuxUtility-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:state_info-val is deprecated.  Use dg_msgs-srv:state_info instead.")
  (state_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <XGAuxUtility-response>) ostream)
  "Serializes a message object of type '<XGAuxUtility-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <XGAuxUtility-response>) istream)
  "Deserializes a message object of type '<XGAuxUtility-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<XGAuxUtility-response>)))
  "Returns string type for a service object of type '<XGAuxUtility-response>"
  "dg_msgs/XGAuxUtilityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XGAuxUtility-response)))
  "Returns string type for a service object of type 'XGAuxUtility-response"
  "dg_msgs/XGAuxUtilityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<XGAuxUtility-response>)))
  "Returns md5sum for a message object of type '<XGAuxUtility-response>"
  "8f88c347ee9cc9a18c8541916b5018b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'XGAuxUtility-response)))
  "Returns md5sum for a message object of type 'XGAuxUtility-response"
  "8f88c347ee9cc9a18c8541916b5018b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<XGAuxUtility-response>)))
  "Returns full string definition for message of type '<XGAuxUtility-response>"
  (cl:format cl:nil "UniversalStateInfo  state_info~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'XGAuxUtility-response)))
  "Returns full string definition for message of type 'XGAuxUtility-response"
  (cl:format cl:nil "UniversalStateInfo  state_info~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <XGAuxUtility-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <XGAuxUtility-response>))
  "Converts a ROS message object to a list"
  (cl:list 'XGAuxUtility-response
    (cl:cons ':state_info (state_info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'XGAuxUtility)))
  'XGAuxUtility-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'XGAuxUtility)))
  'XGAuxUtility-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XGAuxUtility)))
  "Returns string type for a service object of type '<XGAuxUtility>"
  "dg_msgs/XGAuxUtility")