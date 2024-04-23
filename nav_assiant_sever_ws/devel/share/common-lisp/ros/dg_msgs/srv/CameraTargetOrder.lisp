; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude CameraTargetOrder-request.msg.html

(cl:defclass <CameraTargetOrder-request> (roslisp-msg-protocol:ros-message)
  ((pose_camera_baselink_array
    :reader pose_camera_baselink_array
    :initarg :pose_camera_baselink_array
    :type geometry_msgs-msg:PoseArray
    :initform (cl:make-instance 'geometry_msgs-msg:PoseArray))
   (begin_joint
    :reader begin_joint
    :initarg :begin_joint
    :type std_msgs-msg:Float64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float64MultiArray))
   (end_joint
    :reader end_joint
    :initarg :end_joint
    :type std_msgs-msg:Float64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float64MultiArray))
   (lift_data
    :reader lift_data
    :initarg :lift_data
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass CameraTargetOrder-request (<CameraTargetOrder-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraTargetOrder-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraTargetOrder-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<CameraTargetOrder-request> is deprecated: use dg_msgs-srv:CameraTargetOrder-request instead.")))

(cl:ensure-generic-function 'pose_camera_baselink_array-val :lambda-list '(m))
(cl:defmethod pose_camera_baselink_array-val ((m <CameraTargetOrder-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:pose_camera_baselink_array-val is deprecated.  Use dg_msgs-srv:pose_camera_baselink_array instead.")
  (pose_camera_baselink_array m))

(cl:ensure-generic-function 'begin_joint-val :lambda-list '(m))
(cl:defmethod begin_joint-val ((m <CameraTargetOrder-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:begin_joint-val is deprecated.  Use dg_msgs-srv:begin_joint instead.")
  (begin_joint m))

(cl:ensure-generic-function 'end_joint-val :lambda-list '(m))
(cl:defmethod end_joint-val ((m <CameraTargetOrder-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:end_joint-val is deprecated.  Use dg_msgs-srv:end_joint instead.")
  (end_joint m))

(cl:ensure-generic-function 'lift_data-val :lambda-list '(m))
(cl:defmethod lift_data-val ((m <CameraTargetOrder-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:lift_data-val is deprecated.  Use dg_msgs-srv:lift_data instead.")
  (lift_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraTargetOrder-request>) ostream)
  "Serializes a message object of type '<CameraTargetOrder-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_camera_baselink_array) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'begin_joint) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end_joint) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lift_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'lift_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraTargetOrder-request>) istream)
  "Deserializes a message object of type '<CameraTargetOrder-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_camera_baselink_array) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'begin_joint) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end_joint) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lift_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lift_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraTargetOrder-request>)))
  "Returns string type for a service object of type '<CameraTargetOrder-request>"
  "dg_msgs/CameraTargetOrderRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraTargetOrder-request)))
  "Returns string type for a service object of type 'CameraTargetOrder-request"
  "dg_msgs/CameraTargetOrderRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraTargetOrder-request>)))
  "Returns md5sum for a message object of type '<CameraTargetOrder-request>"
  "342700011bd240dab8e5b7f40ce1f93b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraTargetOrder-request)))
  "Returns md5sum for a message object of type 'CameraTargetOrder-request"
  "342700011bd240dab8e5b7f40ce1f93b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraTargetOrder-request>)))
  "Returns full string definition for message of type '<CameraTargetOrder-request>"
  (cl:format cl:nil "geometry_msgs/PoseArray pose_camera_baselink_array~%std_msgs/Float64MultiArray begin_joint~%std_msgs/Float64MultiArray end_joint~%float64[]                                  lift_data~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraTargetOrder-request)))
  "Returns full string definition for message of type 'CameraTargetOrder-request"
  (cl:format cl:nil "geometry_msgs/PoseArray pose_camera_baselink_array~%std_msgs/Float64MultiArray begin_joint~%std_msgs/Float64MultiArray end_joint~%float64[]                                  lift_data~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraTargetOrder-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_camera_baselink_array))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'begin_joint))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end_joint))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lift_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraTargetOrder-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraTargetOrder-request
    (cl:cons ':pose_camera_baselink_array (pose_camera_baselink_array msg))
    (cl:cons ':begin_joint (begin_joint msg))
    (cl:cons ':end_joint (end_joint msg))
    (cl:cons ':lift_data (lift_data msg))
))
;//! \htmlinclude CameraTargetOrder-response.msg.html

(cl:defclass <CameraTargetOrder-response> (roslisp-msg-protocol:ros-message)
  ((order_index
    :reader order_index
    :initarg :order_index
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (multi_joint_data
    :reader multi_joint_data
    :initarg :multi_joint_data
    :type (cl:vector std_msgs-msg:Float64MultiArray)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Float64MultiArray :initial-element (cl:make-instance 'std_msgs-msg:Float64MultiArray))))
)

(cl:defclass CameraTargetOrder-response (<CameraTargetOrder-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraTargetOrder-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraTargetOrder-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<CameraTargetOrder-response> is deprecated: use dg_msgs-srv:CameraTargetOrder-response instead.")))

(cl:ensure-generic-function 'order_index-val :lambda-list '(m))
(cl:defmethod order_index-val ((m <CameraTargetOrder-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:order_index-val is deprecated.  Use dg_msgs-srv:order_index instead.")
  (order_index m))

(cl:ensure-generic-function 'multi_joint_data-val :lambda-list '(m))
(cl:defmethod multi_joint_data-val ((m <CameraTargetOrder-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:multi_joint_data-val is deprecated.  Use dg_msgs-srv:multi_joint_data instead.")
  (multi_joint_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraTargetOrder-response>) ostream)
  "Serializes a message object of type '<CameraTargetOrder-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'order_index))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'order_index))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'multi_joint_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'multi_joint_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraTargetOrder-response>) istream)
  "Deserializes a message object of type '<CameraTargetOrder-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'order_index) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'order_index)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'multi_joint_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'multi_joint_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:Float64MultiArray))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraTargetOrder-response>)))
  "Returns string type for a service object of type '<CameraTargetOrder-response>"
  "dg_msgs/CameraTargetOrderResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraTargetOrder-response)))
  "Returns string type for a service object of type 'CameraTargetOrder-response"
  "dg_msgs/CameraTargetOrderResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraTargetOrder-response>)))
  "Returns md5sum for a message object of type '<CameraTargetOrder-response>"
  "342700011bd240dab8e5b7f40ce1f93b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraTargetOrder-response)))
  "Returns md5sum for a message object of type 'CameraTargetOrder-response"
  "342700011bd240dab8e5b7f40ce1f93b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraTargetOrder-response>)))
  "Returns full string definition for message of type '<CameraTargetOrder-response>"
  (cl:format cl:nil "int32[]                      order_index~%std_msgs/Float64MultiArray[] multi_joint_data~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraTargetOrder-response)))
  "Returns full string definition for message of type 'CameraTargetOrder-response"
  (cl:format cl:nil "int32[]                      order_index~%std_msgs/Float64MultiArray[] multi_joint_data~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraTargetOrder-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'order_index) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'multi_joint_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraTargetOrder-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraTargetOrder-response
    (cl:cons ':order_index (order_index msg))
    (cl:cons ':multi_joint_data (multi_joint_data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CameraTargetOrder)))
  'CameraTargetOrder-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CameraTargetOrder)))
  'CameraTargetOrder-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraTargetOrder)))
  "Returns string type for a service object of type '<CameraTargetOrder>"
  "dg_msgs/CameraTargetOrder")