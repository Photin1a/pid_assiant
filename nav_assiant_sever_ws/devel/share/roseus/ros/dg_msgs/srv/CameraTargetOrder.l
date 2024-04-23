;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::CameraTargetOrder)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'CameraTargetOrder (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::CAMERATARGETORDER")
  (make-package "DG_MSGS::CAMERATARGETORDER"))
(unless (find-package "DG_MSGS::CAMERATARGETORDERREQUEST")
  (make-package "DG_MSGS::CAMERATARGETORDERREQUEST"))
(unless (find-package "DG_MSGS::CAMERATARGETORDERRESPONSE")
  (make-package "DG_MSGS::CAMERATARGETORDERRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dg_msgs::CameraTargetOrderRequest
  :super ros::object
  :slots (_pose_camera_baselink_array _begin_joint _end_joint _lift_data ))

(defmethod dg_msgs::CameraTargetOrderRequest
  (:init
   (&key
    ((:pose_camera_baselink_array __pose_camera_baselink_array) (instance geometry_msgs::PoseArray :init))
    ((:begin_joint __begin_joint) (instance std_msgs::Float64MultiArray :init))
    ((:end_joint __end_joint) (instance std_msgs::Float64MultiArray :init))
    ((:lift_data __lift_data) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _pose_camera_baselink_array __pose_camera_baselink_array)
   (setq _begin_joint __begin_joint)
   (setq _end_joint __end_joint)
   (setq _lift_data __lift_data)
   self)
  (:pose_camera_baselink_array
   (&rest __pose_camera_baselink_array)
   (if (keywordp (car __pose_camera_baselink_array))
       (send* _pose_camera_baselink_array __pose_camera_baselink_array)
     (progn
       (if __pose_camera_baselink_array (setq _pose_camera_baselink_array (car __pose_camera_baselink_array)))
       _pose_camera_baselink_array)))
  (:begin_joint
   (&rest __begin_joint)
   (if (keywordp (car __begin_joint))
       (send* _begin_joint __begin_joint)
     (progn
       (if __begin_joint (setq _begin_joint (car __begin_joint)))
       _begin_joint)))
  (:end_joint
   (&rest __end_joint)
   (if (keywordp (car __end_joint))
       (send* _end_joint __end_joint)
     (progn
       (if __end_joint (setq _end_joint (car __end_joint)))
       _end_joint)))
  (:lift_data
   (&optional __lift_data)
   (if __lift_data (setq _lift_data __lift_data)) _lift_data)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseArray _pose_camera_baselink_array
    (send _pose_camera_baselink_array :serialization-length)
    ;; std_msgs/Float64MultiArray _begin_joint
    (send _begin_joint :serialization-length)
    ;; std_msgs/Float64MultiArray _end_joint
    (send _end_joint :serialization-length)
    ;; float64[] _lift_data
    (* 8    (length _lift_data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseArray _pose_camera_baselink_array
       (send _pose_camera_baselink_array :serialize s)
     ;; std_msgs/Float64MultiArray _begin_joint
       (send _begin_joint :serialize s)
     ;; std_msgs/Float64MultiArray _end_joint
       (send _end_joint :serialize s)
     ;; float64[] _lift_data
     (write-long (length _lift_data) s)
     (dotimes (i (length _lift_data))
       (sys::poke (elt _lift_data i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseArray _pose_camera_baselink_array
     (send _pose_camera_baselink_array :deserialize buf ptr-) (incf ptr- (send _pose_camera_baselink_array :serialization-length))
   ;; std_msgs/Float64MultiArray _begin_joint
     (send _begin_joint :deserialize buf ptr-) (incf ptr- (send _begin_joint :serialization-length))
   ;; std_msgs/Float64MultiArray _end_joint
     (send _end_joint :deserialize buf ptr-) (incf ptr- (send _end_joint :serialization-length))
   ;; float64[] _lift_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lift_data (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _lift_data i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass dg_msgs::CameraTargetOrderResponse
  :super ros::object
  :slots (_order_index _multi_joint_data ))

(defmethod dg_msgs::CameraTargetOrderResponse
  (:init
   (&key
    ((:order_index __order_index) (make-array 0 :initial-element 0 :element-type :integer))
    ((:multi_joint_data __multi_joint_data) (let (r) (dotimes (i 0) (push (instance std_msgs::Float64MultiArray :init) r)) r))
    )
   (send-super :init)
   (setq _order_index __order_index)
   (setq _multi_joint_data __multi_joint_data)
   self)
  (:order_index
   (&optional __order_index)
   (if __order_index (setq _order_index __order_index)) _order_index)
  (:multi_joint_data
   (&rest __multi_joint_data)
   (if (keywordp (car __multi_joint_data))
       (send* _multi_joint_data __multi_joint_data)
     (progn
       (if __multi_joint_data (setq _multi_joint_data (car __multi_joint_data)))
       _multi_joint_data)))
  (:serialization-length
   ()
   (+
    ;; int32[] _order_index
    (* 4    (length _order_index)) 4
    ;; std_msgs/Float64MultiArray[] _multi_joint_data
    (apply #'+ (send-all _multi_joint_data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _order_index
     (write-long (length _order_index) s)
     (dotimes (i (length _order_index))
       (write-long (elt _order_index i) s)
       )
     ;; std_msgs/Float64MultiArray[] _multi_joint_data
     (write-long (length _multi_joint_data) s)
     (dolist (elem _multi_joint_data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _order_index
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _order_index (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _order_index i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; std_msgs/Float64MultiArray[] _multi_joint_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _multi_joint_data (let (r) (dotimes (i n) (push (instance std_msgs::Float64MultiArray :init) r)) r))
     (dolist (elem- _multi_joint_data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass dg_msgs::CameraTargetOrder
  :super ros::object
  :slots ())

(setf (get dg_msgs::CameraTargetOrder :md5sum-) "342700011bd240dab8e5b7f40ce1f93b")
(setf (get dg_msgs::CameraTargetOrder :datatype-) "dg_msgs/CameraTargetOrder")
(setf (get dg_msgs::CameraTargetOrder :request) dg_msgs::CameraTargetOrderRequest)
(setf (get dg_msgs::CameraTargetOrder :response) dg_msgs::CameraTargetOrderResponse)

(defmethod dg_msgs::CameraTargetOrderRequest
  (:response () (instance dg_msgs::CameraTargetOrderResponse :init)))

(setf (get dg_msgs::CameraTargetOrderRequest :md5sum-) "342700011bd240dab8e5b7f40ce1f93b")
(setf (get dg_msgs::CameraTargetOrderRequest :datatype-) "dg_msgs/CameraTargetOrderRequest")
(setf (get dg_msgs::CameraTargetOrderRequest :definition-)
      "geometry_msgs/PoseArray pose_camera_baselink_array
std_msgs/Float64MultiArray begin_joint
std_msgs/Float64MultiArray end_joint
float64[]                                  lift_data

================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: std_msgs/Float64MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float64[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
---
int32[]                      order_index
std_msgs/Float64MultiArray[] multi_joint_data

================================================================================
MSG: std_msgs/Float64MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float64[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
")

(setf (get dg_msgs::CameraTargetOrderResponse :md5sum-) "342700011bd240dab8e5b7f40ce1f93b")
(setf (get dg_msgs::CameraTargetOrderResponse :datatype-) "dg_msgs/CameraTargetOrderResponse")
(setf (get dg_msgs::CameraTargetOrderResponse :definition-)
      "geometry_msgs/PoseArray pose_camera_baselink_array
std_msgs/Float64MultiArray begin_joint
std_msgs/Float64MultiArray end_joint
float64[]                                  lift_data

================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: std_msgs/Float64MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float64[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
---
int32[]                      order_index
std_msgs/Float64MultiArray[] multi_joint_data

================================================================================
MSG: std_msgs/Float64MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float64[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
")



(provide :dg_msgs/CameraTargetOrder "342700011bd240dab8e5b7f40ce1f93b")


