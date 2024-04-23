; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude TrainDataSet.msg.html

(cl:defclass <TrainDataSet> (roslisp-msg-protocol:ros-message)
  ((pose_data
    :reader pose_data
    :initarg :pose_data
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (multi_joint_data
    :reader multi_joint_data
    :initarg :multi_joint_data
    :type (cl:vector std_msgs-msg:Float64MultiArray)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Float64MultiArray :initial-element (cl:make-instance 'std_msgs-msg:Float64MultiArray))))
)

(cl:defclass TrainDataSet (<TrainDataSet>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrainDataSet>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrainDataSet)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<TrainDataSet> is deprecated: use dg_msgs-msg:TrainDataSet instead.")))

(cl:ensure-generic-function 'pose_data-val :lambda-list '(m))
(cl:defmethod pose_data-val ((m <TrainDataSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:pose_data-val is deprecated.  Use dg_msgs-msg:pose_data instead.")
  (pose_data m))

(cl:ensure-generic-function 'multi_joint_data-val :lambda-list '(m))
(cl:defmethod multi_joint_data-val ((m <TrainDataSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:multi_joint_data-val is deprecated.  Use dg_msgs-msg:multi_joint_data instead.")
  (multi_joint_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrainDataSet>) ostream)
  "Serializes a message object of type '<TrainDataSet>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_data) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'multi_joint_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'multi_joint_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrainDataSet>) istream)
  "Deserializes a message object of type '<TrainDataSet>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_data) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrainDataSet>)))
  "Returns string type for a message object of type '<TrainDataSet>"
  "dg_msgs/TrainDataSet")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrainDataSet)))
  "Returns string type for a message object of type 'TrainDataSet"
  "dg_msgs/TrainDataSet")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrainDataSet>)))
  "Returns md5sum for a message object of type '<TrainDataSet>"
  "0179900f3f8016e986c0aef3dd737f34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrainDataSet)))
  "Returns md5sum for a message object of type 'TrainDataSet"
  "0179900f3f8016e986c0aef3dd737f34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrainDataSet>)))
  "Returns full string definition for message of type '<TrainDataSet>"
  (cl:format cl:nil "geometry_msgs/Pose pose_data~%std_msgs/Float64MultiArray[] multi_joint_data~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrainDataSet)))
  "Returns full string definition for message of type 'TrainDataSet"
  (cl:format cl:nil "geometry_msgs/Pose pose_data~%std_msgs/Float64MultiArray[] multi_joint_data~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrainDataSet>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_data))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'multi_joint_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrainDataSet>))
  "Converts a ROS message object to a list"
  (cl:list 'TrainDataSet
    (cl:cons ':pose_data (pose_data msg))
    (cl:cons ':multi_joint_data (multi_joint_data msg))
))
