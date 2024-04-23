; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude Interploate-request.msg.html

(cl:defclass <Interploate-request> (roslisp-msg-protocol:ros-message)
  ((pose_camera_baselink
    :reader pose_camera_baselink
    :initarg :pose_camera_baselink
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (lift_data
    :reader lift_data
    :initarg :lift_data
    :type cl:float
    :initform 0.0)
   (filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform ""))
)

(cl:defclass Interploate-request (<Interploate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Interploate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Interploate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<Interploate-request> is deprecated: use dg_msgs-srv:Interploate-request instead.")))

(cl:ensure-generic-function 'pose_camera_baselink-val :lambda-list '(m))
(cl:defmethod pose_camera_baselink-val ((m <Interploate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:pose_camera_baselink-val is deprecated.  Use dg_msgs-srv:pose_camera_baselink instead.")
  (pose_camera_baselink m))

(cl:ensure-generic-function 'lift_data-val :lambda-list '(m))
(cl:defmethod lift_data-val ((m <Interploate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:lift_data-val is deprecated.  Use dg_msgs-srv:lift_data instead.")
  (lift_data m))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <Interploate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:filename-val is deprecated.  Use dg_msgs-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Interploate-request>) ostream)
  "Serializes a message object of type '<Interploate-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_camera_baselink) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lift_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Interploate-request>) istream)
  "Deserializes a message object of type '<Interploate-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_camera_baselink) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lift_data) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Interploate-request>)))
  "Returns string type for a service object of type '<Interploate-request>"
  "dg_msgs/InterploateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Interploate-request)))
  "Returns string type for a service object of type 'Interploate-request"
  "dg_msgs/InterploateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Interploate-request>)))
  "Returns md5sum for a message object of type '<Interploate-request>"
  "20ebdb9296a7b10c1ea97741e338b7bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Interploate-request)))
  "Returns md5sum for a message object of type 'Interploate-request"
  "20ebdb9296a7b10c1ea97741e338b7bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Interploate-request>)))
  "Returns full string definition for message of type '<Interploate-request>"
  (cl:format cl:nil "geometry_msgs/Pose              pose_camera_baselink~%float64                         lift_data       ~%string                          filename~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Interploate-request)))
  "Returns full string definition for message of type 'Interploate-request"
  (cl:format cl:nil "geometry_msgs/Pose              pose_camera_baselink~%float64                         lift_data       ~%string                          filename~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Interploate-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_camera_baselink))
     8
     4 (cl:length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Interploate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Interploate-request
    (cl:cons ':pose_camera_baselink (pose_camera_baselink msg))
    (cl:cons ':lift_data (lift_data msg))
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude Interploate-response.msg.html

(cl:defclass <Interploate-response> (roslisp-msg-protocol:ros-message)
  ((pose_dataset_array
    :reader pose_dataset_array
    :initarg :pose_dataset_array
    :type (cl:vector dg_msgs-msg:TrainDataSet)
   :initform (cl:make-array 0 :element-type 'dg_msgs-msg:TrainDataSet :initial-element (cl:make-instance 'dg_msgs-msg:TrainDataSet))))
)

(cl:defclass Interploate-response (<Interploate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Interploate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Interploate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<Interploate-response> is deprecated: use dg_msgs-srv:Interploate-response instead.")))

(cl:ensure-generic-function 'pose_dataset_array-val :lambda-list '(m))
(cl:defmethod pose_dataset_array-val ((m <Interploate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:pose_dataset_array-val is deprecated.  Use dg_msgs-srv:pose_dataset_array instead.")
  (pose_dataset_array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Interploate-response>) ostream)
  "Serializes a message object of type '<Interploate-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pose_dataset_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pose_dataset_array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Interploate-response>) istream)
  "Deserializes a message object of type '<Interploate-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pose_dataset_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pose_dataset_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dg_msgs-msg:TrainDataSet))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Interploate-response>)))
  "Returns string type for a service object of type '<Interploate-response>"
  "dg_msgs/InterploateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Interploate-response)))
  "Returns string type for a service object of type 'Interploate-response"
  "dg_msgs/InterploateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Interploate-response>)))
  "Returns md5sum for a message object of type '<Interploate-response>"
  "20ebdb9296a7b10c1ea97741e338b7bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Interploate-response)))
  "Returns md5sum for a message object of type 'Interploate-response"
  "20ebdb9296a7b10c1ea97741e338b7bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Interploate-response>)))
  "Returns full string definition for message of type '<Interploate-response>"
  (cl:format cl:nil "TrainDataSet[]                  pose_dataset_array~%~%================================================================================~%MSG: dg_msgs/TrainDataSet~%geometry_msgs/Pose pose_data~%std_msgs/Float64MultiArray[] multi_joint_data~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Interploate-response)))
  "Returns full string definition for message of type 'Interploate-response"
  (cl:format cl:nil "TrainDataSet[]                  pose_dataset_array~%~%================================================================================~%MSG: dg_msgs/TrainDataSet~%geometry_msgs/Pose pose_data~%std_msgs/Float64MultiArray[] multi_joint_data~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Interploate-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose_dataset_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Interploate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Interploate-response
    (cl:cons ':pose_dataset_array (pose_dataset_array msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Interploate)))
  'Interploate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Interploate)))
  'Interploate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Interploate)))
  "Returns string type for a service object of type '<Interploate>"
  "dg_msgs/Interploate")