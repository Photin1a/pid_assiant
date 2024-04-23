; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude PcdRegistration-request.msg.html

(cl:defclass <PcdRegistration-request> (roslisp-msg-protocol:ros-message)
  ((data_collect
    :reader data_collect
    :initarg :data_collect
    :type cl:integer
    :initform 0)
   (topic_lidar
    :reader topic_lidar
    :initarg :topic_lidar
    :type cl:string
    :initform "")
   (collection_frames
    :reader collection_frames
    :initarg :collection_frames
    :type cl:integer
    :initform 0)
   (path_source
    :reader path_source
    :initarg :path_source
    :type cl:string
    :initform "")
   (path_target
    :reader path_target
    :initarg :path_target
    :type cl:string
    :initform "")
   (pcd_target
    :reader pcd_target
    :initarg :pcd_target
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (statistical_filter_source
    :reader statistical_filter_source
    :initarg :statistical_filter_source
    :type cl:boolean
    :initform cl:nil)
   (statistical_filter_target
    :reader statistical_filter_target
    :initarg :statistical_filter_target
    :type cl:boolean
    :initform cl:nil)
   (use_fpfh
    :reader use_fpfh
    :initarg :use_fpfh
    :type cl:boolean
    :initform cl:nil)
   (crop
    :reader crop
    :initarg :crop
    :type cl:boolean
    :initform cl:nil)
   (cropbox_source
    :reader cropbox_source
    :initarg :cropbox_source
    :type dg_msgs-msg:CropBox
    :initform (cl:make-instance 'dg_msgs-msg:CropBox))
   (cropbox_target
    :reader cropbox_target
    :initarg :cropbox_target
    :type dg_msgs-msg:CropBox
    :initform (cl:make-instance 'dg_msgs-msg:CropBox))
   (init_pose
    :reader init_pose
    :initarg :init_pose
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform)))
)

(cl:defclass PcdRegistration-request (<PcdRegistration-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PcdRegistration-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PcdRegistration-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<PcdRegistration-request> is deprecated: use dg_msgs-srv:PcdRegistration-request instead.")))

(cl:ensure-generic-function 'data_collect-val :lambda-list '(m))
(cl:defmethod data_collect-val ((m <PcdRegistration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:data_collect-val is deprecated.  Use dg_msgs-srv:data_collect instead.")
  (data_collect m))

(cl:ensure-generic-function 'topic_lidar-val :lambda-list '(m))
(cl:defmethod topic_lidar-val ((m <PcdRegistration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:topic_lidar-val is deprecated.  Use dg_msgs-srv:topic_lidar instead.")
  (topic_lidar m))

(cl:ensure-generic-function 'collection_frames-val :lambda-list '(m))
(cl:defmethod collection_frames-val ((m <PcdRegistration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:collection_frames-val is deprecated.  Use dg_msgs-srv:collection_frames instead.")
  (collection_frames m))

(cl:ensure-generic-function 'path_source-val :lambda-list '(m))
(cl:defmethod path_source-val ((m <PcdRegistration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:path_source-val is deprecated.  Use dg_msgs-srv:path_source instead.")
  (path_source m))

(cl:ensure-generic-function 'path_target-val :lambda-list '(m))
(cl:defmethod path_target-val ((m <PcdRegistration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:path_target-val is deprecated.  Use dg_msgs-srv:path_target instead.")
  (path_target m))

(cl:ensure-generic-function 'pcd_target-val :lambda-list '(m))
(cl:defmethod pcd_target-val ((m <PcdRegistration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:pcd_target-val is deprecated.  Use dg_msgs-srv:pcd_target instead.")
  (pcd_target m))

(cl:ensure-generic-function 'statistical_filter_source-val :lambda-list '(m))
(cl:defmethod statistical_filter_source-val ((m <PcdRegistration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:statistical_filter_source-val is deprecated.  Use dg_msgs-srv:statistical_filter_source instead.")
  (statistical_filter_source m))

(cl:ensure-generic-function 'statistical_filter_target-val :lambda-list '(m))
(cl:defmethod statistical_filter_target-val ((m <PcdRegistration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:statistical_filter_target-val is deprecated.  Use dg_msgs-srv:statistical_filter_target instead.")
  (statistical_filter_target m))

(cl:ensure-generic-function 'use_fpfh-val :lambda-list '(m))
(cl:defmethod use_fpfh-val ((m <PcdRegistration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:use_fpfh-val is deprecated.  Use dg_msgs-srv:use_fpfh instead.")
  (use_fpfh m))

(cl:ensure-generic-function 'crop-val :lambda-list '(m))
(cl:defmethod crop-val ((m <PcdRegistration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:crop-val is deprecated.  Use dg_msgs-srv:crop instead.")
  (crop m))

(cl:ensure-generic-function 'cropbox_source-val :lambda-list '(m))
(cl:defmethod cropbox_source-val ((m <PcdRegistration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:cropbox_source-val is deprecated.  Use dg_msgs-srv:cropbox_source instead.")
  (cropbox_source m))

(cl:ensure-generic-function 'cropbox_target-val :lambda-list '(m))
(cl:defmethod cropbox_target-val ((m <PcdRegistration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:cropbox_target-val is deprecated.  Use dg_msgs-srv:cropbox_target instead.")
  (cropbox_target m))

(cl:ensure-generic-function 'init_pose-val :lambda-list '(m))
(cl:defmethod init_pose-val ((m <PcdRegistration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:init_pose-val is deprecated.  Use dg_msgs-srv:init_pose instead.")
  (init_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PcdRegistration-request>) ostream)
  "Serializes a message object of type '<PcdRegistration-request>"
  (cl:let* ((signed (cl:slot-value msg 'data_collect)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic_lidar))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic_lidar))
  (cl:let* ((signed (cl:slot-value msg 'collection_frames)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path_source))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path_source))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path_target))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path_target))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pcd_target) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'statistical_filter_source) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'statistical_filter_target) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_fpfh) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'crop) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cropbox_source) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cropbox_target) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'init_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PcdRegistration-request>) istream)
  "Deserializes a message object of type '<PcdRegistration-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data_collect) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic_lidar) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic_lidar) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'collection_frames) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path_source) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path_source) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path_target) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path_target) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pcd_target) istream)
    (cl:setf (cl:slot-value msg 'statistical_filter_source) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'statistical_filter_target) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'use_fpfh) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'crop) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cropbox_source) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cropbox_target) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'init_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PcdRegistration-request>)))
  "Returns string type for a service object of type '<PcdRegistration-request>"
  "dg_msgs/PcdRegistrationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PcdRegistration-request)))
  "Returns string type for a service object of type 'PcdRegistration-request"
  "dg_msgs/PcdRegistrationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PcdRegistration-request>)))
  "Returns md5sum for a message object of type '<PcdRegistration-request>"
  "5bd0e2fcf9944d063d5fa39205fff5d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PcdRegistration-request)))
  "Returns md5sum for a message object of type 'PcdRegistration-request"
  "5bd0e2fcf9944d063d5fa39205fff5d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PcdRegistration-request>)))
  "Returns full string definition for message of type '<PcdRegistration-request>"
  (cl:format cl:nil "int32 data_collect~%string topic_lidar~%int32 collection_frames~%string path_source~%string path_target~%sensor_msgs/PointCloud2 pcd_target~%bool statistical_filter_source~%bool statistical_filter_target~%bool use_fpfh~%bool crop~%CropBox cropbox_source~%CropBox cropbox_target~%geometry_msgs/Transform init_pose~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: dg_msgs/CropBox~%float32[] center_~%float32[] R_euler~%float32[] extent_~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PcdRegistration-request)))
  "Returns full string definition for message of type 'PcdRegistration-request"
  (cl:format cl:nil "int32 data_collect~%string topic_lidar~%int32 collection_frames~%string path_source~%string path_target~%sensor_msgs/PointCloud2 pcd_target~%bool statistical_filter_source~%bool statistical_filter_target~%bool use_fpfh~%bool crop~%CropBox cropbox_source~%CropBox cropbox_target~%geometry_msgs/Transform init_pose~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: dg_msgs/CropBox~%float32[] center_~%float32[] R_euler~%float32[] extent_~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PcdRegistration-request>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'topic_lidar))
     4
     4 (cl:length (cl:slot-value msg 'path_source))
     4 (cl:length (cl:slot-value msg 'path_target))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pcd_target))
     1
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cropbox_source))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cropbox_target))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'init_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PcdRegistration-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PcdRegistration-request
    (cl:cons ':data_collect (data_collect msg))
    (cl:cons ':topic_lidar (topic_lidar msg))
    (cl:cons ':collection_frames (collection_frames msg))
    (cl:cons ':path_source (path_source msg))
    (cl:cons ':path_target (path_target msg))
    (cl:cons ':pcd_target (pcd_target msg))
    (cl:cons ':statistical_filter_source (statistical_filter_source msg))
    (cl:cons ':statistical_filter_target (statistical_filter_target msg))
    (cl:cons ':use_fpfh (use_fpfh msg))
    (cl:cons ':crop (crop msg))
    (cl:cons ':cropbox_source (cropbox_source msg))
    (cl:cons ':cropbox_target (cropbox_target msg))
    (cl:cons ':init_pose (init_pose msg))
))
;//! \htmlinclude PcdRegistration-response.msg.html

(cl:defclass <PcdRegistration-response> (roslisp-msg-protocol:ros-message)
  ((transform
    :reader transform
    :initarg :transform
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform))
   (state_info
    :reader state_info
    :initarg :state_info
    :type dg_msgs-msg:UniversalStateInfo
    :initform (cl:make-instance 'dg_msgs-msg:UniversalStateInfo)))
)

(cl:defclass PcdRegistration-response (<PcdRegistration-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PcdRegistration-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PcdRegistration-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<PcdRegistration-response> is deprecated: use dg_msgs-srv:PcdRegistration-response instead.")))

(cl:ensure-generic-function 'transform-val :lambda-list '(m))
(cl:defmethod transform-val ((m <PcdRegistration-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:transform-val is deprecated.  Use dg_msgs-srv:transform instead.")
  (transform m))

(cl:ensure-generic-function 'state_info-val :lambda-list '(m))
(cl:defmethod state_info-val ((m <PcdRegistration-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:state_info-val is deprecated.  Use dg_msgs-srv:state_info instead.")
  (state_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PcdRegistration-response>) ostream)
  "Serializes a message object of type '<PcdRegistration-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PcdRegistration-response>) istream)
  "Deserializes a message object of type '<PcdRegistration-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PcdRegistration-response>)))
  "Returns string type for a service object of type '<PcdRegistration-response>"
  "dg_msgs/PcdRegistrationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PcdRegistration-response)))
  "Returns string type for a service object of type 'PcdRegistration-response"
  "dg_msgs/PcdRegistrationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PcdRegistration-response>)))
  "Returns md5sum for a message object of type '<PcdRegistration-response>"
  "5bd0e2fcf9944d063d5fa39205fff5d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PcdRegistration-response)))
  "Returns md5sum for a message object of type 'PcdRegistration-response"
  "5bd0e2fcf9944d063d5fa39205fff5d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PcdRegistration-response>)))
  "Returns full string definition for message of type '<PcdRegistration-response>"
  (cl:format cl:nil "# bool result_registration~%# string status_info~%geometry_msgs/Transform transform~%UniversalStateInfo  state_info # state_index: 0 配准成功 1 配准失败 2 读取target点云文件失败 3 读取source点云文件失败 4 从激光雷达获取点云失败 5 从相机获取点云失败~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PcdRegistration-response)))
  "Returns full string definition for message of type 'PcdRegistration-response"
  (cl:format cl:nil "# bool result_registration~%# string status_info~%geometry_msgs/Transform transform~%UniversalStateInfo  state_info # state_index: 0 配准成功 1 配准失败 2 读取target点云文件失败 3 读取source点云文件失败 4 从激光雷达获取点云失败 5 从相机获取点云失败~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PcdRegistration-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PcdRegistration-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PcdRegistration-response
    (cl:cons ':transform (transform msg))
    (cl:cons ':state_info (state_info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PcdRegistration)))
  'PcdRegistration-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PcdRegistration)))
  'PcdRegistration-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PcdRegistration)))
  "Returns string type for a service object of type '<PcdRegistration>"
  "dg_msgs/PcdRegistration")