; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude ReturnJointAnglesAndPose-request.msg.html

(cl:defclass <ReturnJointAnglesAndPose-request> (roslisp-msg-protocol:ros-message)
  ((pose_camera_baselink
    :reader pose_camera_baselink
    :initarg :pose_camera_baselink
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (file_path
    :reader file_path
    :initarg :file_path
    :type cl:string
    :initform "")
   (alter_count
    :reader alter_count
    :initarg :alter_count
    :type cl:integer
    :initform 0)
   (error_data
    :reader error_data
    :initarg :error_data
    :type cl:float
    :initform 0.0))
)

(cl:defclass ReturnJointAnglesAndPose-request (<ReturnJointAnglesAndPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReturnJointAnglesAndPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReturnJointAnglesAndPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<ReturnJointAnglesAndPose-request> is deprecated: use dg_msgs-srv:ReturnJointAnglesAndPose-request instead.")))

(cl:ensure-generic-function 'pose_camera_baselink-val :lambda-list '(m))
(cl:defmethod pose_camera_baselink-val ((m <ReturnJointAnglesAndPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:pose_camera_baselink-val is deprecated.  Use dg_msgs-srv:pose_camera_baselink instead.")
  (pose_camera_baselink m))

(cl:ensure-generic-function 'file_path-val :lambda-list '(m))
(cl:defmethod file_path-val ((m <ReturnJointAnglesAndPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:file_path-val is deprecated.  Use dg_msgs-srv:file_path instead.")
  (file_path m))

(cl:ensure-generic-function 'alter_count-val :lambda-list '(m))
(cl:defmethod alter_count-val ((m <ReturnJointAnglesAndPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:alter_count-val is deprecated.  Use dg_msgs-srv:alter_count instead.")
  (alter_count m))

(cl:ensure-generic-function 'error_data-val :lambda-list '(m))
(cl:defmethod error_data-val ((m <ReturnJointAnglesAndPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:error_data-val is deprecated.  Use dg_msgs-srv:error_data instead.")
  (error_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReturnJointAnglesAndPose-request>) ostream)
  "Serializes a message object of type '<ReturnJointAnglesAndPose-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_camera_baselink) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_path))
  (cl:let* ((signed (cl:slot-value msg 'alter_count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'error_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReturnJointAnglesAndPose-request>) istream)
  "Deserializes a message object of type '<ReturnJointAnglesAndPose-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_camera_baselink) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alter_count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'error_data) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReturnJointAnglesAndPose-request>)))
  "Returns string type for a service object of type '<ReturnJointAnglesAndPose-request>"
  "dg_msgs/ReturnJointAnglesAndPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReturnJointAnglesAndPose-request)))
  "Returns string type for a service object of type 'ReturnJointAnglesAndPose-request"
  "dg_msgs/ReturnJointAnglesAndPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReturnJointAnglesAndPose-request>)))
  "Returns md5sum for a message object of type '<ReturnJointAnglesAndPose-request>"
  "68f8701d655359a5b226e67fe93ab112")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReturnJointAnglesAndPose-request)))
  "Returns md5sum for a message object of type 'ReturnJointAnglesAndPose-request"
  "68f8701d655359a5b226e67fe93ab112")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReturnJointAnglesAndPose-request>)))
  "Returns full string definition for message of type '<ReturnJointAnglesAndPose-request>"
  (cl:format cl:nil "geometry_msgs/Pose pose_camera_baselink~%string file_path~%int32 alter_count #邻近点返回数量~%float64 error_data #误差范围~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReturnJointAnglesAndPose-request)))
  "Returns full string definition for message of type 'ReturnJointAnglesAndPose-request"
  (cl:format cl:nil "geometry_msgs/Pose pose_camera_baselink~%string file_path~%int32 alter_count #邻近点返回数量~%float64 error_data #误差范围~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReturnJointAnglesAndPose-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_camera_baselink))
     4 (cl:length (cl:slot-value msg 'file_path))
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReturnJointAnglesAndPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReturnJointAnglesAndPose-request
    (cl:cons ':pose_camera_baselink (pose_camera_baselink msg))
    (cl:cons ':file_path (file_path msg))
    (cl:cons ':alter_count (alter_count msg))
    (cl:cons ':error_data (error_data msg))
))
;//! \htmlinclude ReturnJointAnglesAndPose-response.msg.html

(cl:defclass <ReturnJointAnglesAndPose-response> (roslisp-msg-protocol:ros-message)
  ((pose_ret
    :reader pose_ret
    :initarg :pose_ret
    :type (cl:vector dg_msgs-msg:TrainDataSet)
   :initform (cl:make-array 0 :element-type 'dg_msgs-msg:TrainDataSet :initial-element (cl:make-instance 'dg_msgs-msg:TrainDataSet))))
)

(cl:defclass ReturnJointAnglesAndPose-response (<ReturnJointAnglesAndPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReturnJointAnglesAndPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReturnJointAnglesAndPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<ReturnJointAnglesAndPose-response> is deprecated: use dg_msgs-srv:ReturnJointAnglesAndPose-response instead.")))

(cl:ensure-generic-function 'pose_ret-val :lambda-list '(m))
(cl:defmethod pose_ret-val ((m <ReturnJointAnglesAndPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:pose_ret-val is deprecated.  Use dg_msgs-srv:pose_ret instead.")
  (pose_ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReturnJointAnglesAndPose-response>) ostream)
  "Serializes a message object of type '<ReturnJointAnglesAndPose-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pose_ret))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pose_ret))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReturnJointAnglesAndPose-response>) istream)
  "Deserializes a message object of type '<ReturnJointAnglesAndPose-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pose_ret) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pose_ret)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dg_msgs-msg:TrainDataSet))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReturnJointAnglesAndPose-response>)))
  "Returns string type for a service object of type '<ReturnJointAnglesAndPose-response>"
  "dg_msgs/ReturnJointAnglesAndPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReturnJointAnglesAndPose-response)))
  "Returns string type for a service object of type 'ReturnJointAnglesAndPose-response"
  "dg_msgs/ReturnJointAnglesAndPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReturnJointAnglesAndPose-response>)))
  "Returns md5sum for a message object of type '<ReturnJointAnglesAndPose-response>"
  "68f8701d655359a5b226e67fe93ab112")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReturnJointAnglesAndPose-response)))
  "Returns md5sum for a message object of type 'ReturnJointAnglesAndPose-response"
  "68f8701d655359a5b226e67fe93ab112")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReturnJointAnglesAndPose-response>)))
  "Returns full string definition for message of type '<ReturnJointAnglesAndPose-response>"
  (cl:format cl:nil "TrainDataSet[] pose_ret~%~%================================================================================~%MSG: dg_msgs/TrainDataSet~%geometry_msgs/Pose pose_data~%std_msgs/Float64MultiArray[] multi_joint_data~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReturnJointAnglesAndPose-response)))
  "Returns full string definition for message of type 'ReturnJointAnglesAndPose-response"
  (cl:format cl:nil "TrainDataSet[] pose_ret~%~%================================================================================~%MSG: dg_msgs/TrainDataSet~%geometry_msgs/Pose pose_data~%std_msgs/Float64MultiArray[] multi_joint_data~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReturnJointAnglesAndPose-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose_ret) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReturnJointAnglesAndPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReturnJointAnglesAndPose-response
    (cl:cons ':pose_ret (pose_ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReturnJointAnglesAndPose)))
  'ReturnJointAnglesAndPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReturnJointAnglesAndPose)))
  'ReturnJointAnglesAndPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReturnJointAnglesAndPose)))
  "Returns string type for a service object of type '<ReturnJointAnglesAndPose>"
  "dg_msgs/ReturnJointAnglesAndPose")