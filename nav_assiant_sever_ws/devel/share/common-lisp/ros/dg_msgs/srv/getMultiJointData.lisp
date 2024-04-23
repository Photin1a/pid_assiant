; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude getMultiJointData-request.msg.html

(cl:defclass <getMultiJointData-request> (roslisp-msg-protocol:ros-message)
  ((pose_camera_baselink
    :reader pose_camera_baselink
    :initarg :pose_camera_baselink
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (joint_data
    :reader joint_data
    :initarg :joint_data
    :type std_msgs-msg:Float64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float64MultiArray))
   (is_checkself_collision
    :reader is_checkself_collision
    :initarg :is_checkself_collision
    :type cl:boolean
    :initform cl:nil)
   (is_env_collision
    :reader is_env_collision
    :initarg :is_env_collision
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass getMultiJointData-request (<getMultiJointData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <getMultiJointData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'getMultiJointData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<getMultiJointData-request> is deprecated: use dg_msgs-srv:getMultiJointData-request instead.")))

(cl:ensure-generic-function 'pose_camera_baselink-val :lambda-list '(m))
(cl:defmethod pose_camera_baselink-val ((m <getMultiJointData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:pose_camera_baselink-val is deprecated.  Use dg_msgs-srv:pose_camera_baselink instead.")
  (pose_camera_baselink m))

(cl:ensure-generic-function 'joint_data-val :lambda-list '(m))
(cl:defmethod joint_data-val ((m <getMultiJointData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:joint_data-val is deprecated.  Use dg_msgs-srv:joint_data instead.")
  (joint_data m))

(cl:ensure-generic-function 'is_checkself_collision-val :lambda-list '(m))
(cl:defmethod is_checkself_collision-val ((m <getMultiJointData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:is_checkself_collision-val is deprecated.  Use dg_msgs-srv:is_checkself_collision instead.")
  (is_checkself_collision m))

(cl:ensure-generic-function 'is_env_collision-val :lambda-list '(m))
(cl:defmethod is_env_collision-val ((m <getMultiJointData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:is_env_collision-val is deprecated.  Use dg_msgs-srv:is_env_collision instead.")
  (is_env_collision m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <getMultiJointData-request>) ostream)
  "Serializes a message object of type '<getMultiJointData-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_camera_baselink) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'joint_data) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_checkself_collision) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_env_collision) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <getMultiJointData-request>) istream)
  "Deserializes a message object of type '<getMultiJointData-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_camera_baselink) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'joint_data) istream)
    (cl:setf (cl:slot-value msg 'is_checkself_collision) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_env_collision) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<getMultiJointData-request>)))
  "Returns string type for a service object of type '<getMultiJointData-request>"
  "dg_msgs/getMultiJointDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getMultiJointData-request)))
  "Returns string type for a service object of type 'getMultiJointData-request"
  "dg_msgs/getMultiJointDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<getMultiJointData-request>)))
  "Returns md5sum for a message object of type '<getMultiJointData-request>"
  "41a9011d770649a5881591be09a91dc1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'getMultiJointData-request)))
  "Returns md5sum for a message object of type 'getMultiJointData-request"
  "41a9011d770649a5881591be09a91dc1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<getMultiJointData-request>)))
  "Returns full string definition for message of type '<getMultiJointData-request>"
  (cl:format cl:nil "geometry_msgs/Pose pose_camera_baselink~%std_msgs/Float64MultiArray joint_data~%bool is_checkself_collision~%bool is_env_collision~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'getMultiJointData-request)))
  "Returns full string definition for message of type 'getMultiJointData-request"
  (cl:format cl:nil "geometry_msgs/Pose pose_camera_baselink~%std_msgs/Float64MultiArray joint_data~%bool is_checkself_collision~%bool is_env_collision~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <getMultiJointData-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_camera_baselink))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'joint_data))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <getMultiJointData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'getMultiJointData-request
    (cl:cons ':pose_camera_baselink (pose_camera_baselink msg))
    (cl:cons ':joint_data (joint_data msg))
    (cl:cons ':is_checkself_collision (is_checkself_collision msg))
    (cl:cons ':is_env_collision (is_env_collision msg))
))
;//! \htmlinclude getMultiJointData-response.msg.html

(cl:defclass <getMultiJointData-response> (roslisp-msg-protocol:ros-message)
  ((multi_joint_data
    :reader multi_joint_data
    :initarg :multi_joint_data
    :type (cl:vector std_msgs-msg:Float64MultiArray)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Float64MultiArray :initial-element (cl:make-instance 'std_msgs-msg:Float64MultiArray))))
)

(cl:defclass getMultiJointData-response (<getMultiJointData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <getMultiJointData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'getMultiJointData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<getMultiJointData-response> is deprecated: use dg_msgs-srv:getMultiJointData-response instead.")))

(cl:ensure-generic-function 'multi_joint_data-val :lambda-list '(m))
(cl:defmethod multi_joint_data-val ((m <getMultiJointData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:multi_joint_data-val is deprecated.  Use dg_msgs-srv:multi_joint_data instead.")
  (multi_joint_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <getMultiJointData-response>) ostream)
  "Serializes a message object of type '<getMultiJointData-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'multi_joint_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'multi_joint_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <getMultiJointData-response>) istream)
  "Deserializes a message object of type '<getMultiJointData-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<getMultiJointData-response>)))
  "Returns string type for a service object of type '<getMultiJointData-response>"
  "dg_msgs/getMultiJointDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getMultiJointData-response)))
  "Returns string type for a service object of type 'getMultiJointData-response"
  "dg_msgs/getMultiJointDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<getMultiJointData-response>)))
  "Returns md5sum for a message object of type '<getMultiJointData-response>"
  "41a9011d770649a5881591be09a91dc1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'getMultiJointData-response)))
  "Returns md5sum for a message object of type 'getMultiJointData-response"
  "41a9011d770649a5881591be09a91dc1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<getMultiJointData-response>)))
  "Returns full string definition for message of type '<getMultiJointData-response>"
  (cl:format cl:nil "std_msgs/Float64MultiArray[] multi_joint_data~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'getMultiJointData-response)))
  "Returns full string definition for message of type 'getMultiJointData-response"
  (cl:format cl:nil "std_msgs/Float64MultiArray[] multi_joint_data~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <getMultiJointData-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'multi_joint_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <getMultiJointData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'getMultiJointData-response
    (cl:cons ':multi_joint_data (multi_joint_data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'getMultiJointData)))
  'getMultiJointData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'getMultiJointData)))
  'getMultiJointData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getMultiJointData)))
  "Returns string type for a service object of type '<getMultiJointData>"
  "dg_msgs/getMultiJointData")