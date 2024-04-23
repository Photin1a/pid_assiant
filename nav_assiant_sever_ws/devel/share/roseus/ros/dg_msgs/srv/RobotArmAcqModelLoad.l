;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::RobotArmAcqModelLoad)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'RobotArmAcqModelLoad (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::ROBOTARMACQMODELLOAD")
  (make-package "DG_MSGS::ROBOTARMACQMODELLOAD"))
(unless (find-package "DG_MSGS::ROBOTARMACQMODELLOADREQUEST")
  (make-package "DG_MSGS::ROBOTARMACQMODELLOADREQUEST"))
(unless (find-package "DG_MSGS::ROBOTARMACQMODELLOADRESPONSE")
  (make-package "DG_MSGS::ROBOTARMACQMODELLOADRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::RobotArmAcqModelLoadRequest
  :super ros::object
  :slots (_model_path _matrix_region_init _region_frame_path _matrix_region_regionframe _image_points ))

(defmethod dg_msgs::RobotArmAcqModelLoadRequest
  (:init
   (&key
    ((:model_path __model_path) "")
    ((:matrix_region_init __matrix_region_init) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:region_frame_path __region_frame_path) "")
    ((:matrix_region_regionframe __matrix_region_regionframe) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:image_points __image_points) (let (r) (dotimes (i 0) (push (instance dg_msgs::PointSequence :init) r)) r))
    )
   (send-super :init)
   (setq _model_path (string __model_path))
   (setq _matrix_region_init __matrix_region_init)
   (setq _region_frame_path (string __region_frame_path))
   (setq _matrix_region_regionframe __matrix_region_regionframe)
   (setq _image_points __image_points)
   self)
  (:model_path
   (&optional __model_path)
   (if __model_path (setq _model_path __model_path)) _model_path)
  (:matrix_region_init
   (&optional __matrix_region_init)
   (if __matrix_region_init (setq _matrix_region_init __matrix_region_init)) _matrix_region_init)
  (:region_frame_path
   (&optional __region_frame_path)
   (if __region_frame_path (setq _region_frame_path __region_frame_path)) _region_frame_path)
  (:matrix_region_regionframe
   (&optional __matrix_region_regionframe)
   (if __matrix_region_regionframe (setq _matrix_region_regionframe __matrix_region_regionframe)) _matrix_region_regionframe)
  (:image_points
   (&rest __image_points)
   (if (keywordp (car __image_points))
       (send* _image_points __image_points)
     (progn
       (if __image_points (setq _image_points (car __image_points)))
       _image_points)))
  (:serialization-length
   ()
   (+
    ;; string _model_path
    4 (length _model_path)
    ;; float64[] _matrix_region_init
    (* 8    (length _matrix_region_init)) 4
    ;; string _region_frame_path
    4 (length _region_frame_path)
    ;; float64[] _matrix_region_regionframe
    (* 8    (length _matrix_region_regionframe)) 4
    ;; dg_msgs/PointSequence[] _image_points
    (apply #'+ (send-all _image_points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _model_path
       (write-long (length _model_path) s) (princ _model_path s)
     ;; float64[] _matrix_region_init
     (write-long (length _matrix_region_init) s)
     (dotimes (i (length _matrix_region_init))
       (sys::poke (elt _matrix_region_init i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; string _region_frame_path
       (write-long (length _region_frame_path) s) (princ _region_frame_path s)
     ;; float64[] _matrix_region_regionframe
     (write-long (length _matrix_region_regionframe) s)
     (dotimes (i (length _matrix_region_regionframe))
       (sys::poke (elt _matrix_region_regionframe i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; dg_msgs/PointSequence[] _image_points
     (write-long (length _image_points) s)
     (dolist (elem _image_points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _model_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[] _matrix_region_init
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _matrix_region_init (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _matrix_region_init i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; string _region_frame_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _region_frame_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[] _matrix_region_regionframe
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _matrix_region_regionframe (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _matrix_region_regionframe i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; dg_msgs/PointSequence[] _image_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _image_points (let (r) (dotimes (i n) (push (instance dg_msgs::PointSequence :init) r)) r))
     (dolist (elem- _image_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass dg_msgs::RobotArmAcqModelLoadResponse
  :super ros::object
  :slots (_state_info ))

(defmethod dg_msgs::RobotArmAcqModelLoadResponse
  (:init
   (&key
    ((:state_info __state_info) (instance dg_msgs::UniversalStateInfo :init))
    )
   (send-super :init)
   (setq _state_info __state_info)
   self)
  (:state_info
   (&rest __state_info)
   (if (keywordp (car __state_info))
       (send* _state_info __state_info)
     (progn
       (if __state_info (setq _state_info (car __state_info)))
       _state_info)))
  (:serialization-length
   ()
   (+
    ;; dg_msgs/UniversalStateInfo _state_info
    (send _state_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dg_msgs/UniversalStateInfo _state_info
       (send _state_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dg_msgs/UniversalStateInfo _state_info
     (send _state_info :deserialize buf ptr-) (incf ptr- (send _state_info :serialization-length))
   ;;
   self)
  )

(defclass dg_msgs::RobotArmAcqModelLoad
  :super ros::object
  :slots ())

(setf (get dg_msgs::RobotArmAcqModelLoad :md5sum-) "7fe10d3217aaf92c81e254fca18fb315")
(setf (get dg_msgs::RobotArmAcqModelLoad :datatype-) "dg_msgs/RobotArmAcqModelLoad")
(setf (get dg_msgs::RobotArmAcqModelLoad :request) dg_msgs::RobotArmAcqModelLoadRequest)
(setf (get dg_msgs::RobotArmAcqModelLoad :response) dg_msgs::RobotArmAcqModelLoadResponse)

(defmethod dg_msgs::RobotArmAcqModelLoadRequest
  (:response () (instance dg_msgs::RobotArmAcqModelLoadResponse :init)))

(setf (get dg_msgs::RobotArmAcqModelLoadRequest :md5sum-) "7fe10d3217aaf92c81e254fca18fb315")
(setf (get dg_msgs::RobotArmAcqModelLoadRequest :datatype-) "dg_msgs/RobotArmAcqModelLoadRequest")
(setf (get dg_msgs::RobotArmAcqModelLoadRequest :definition-)
      "string      model_path                     # 区域模型
float64[]   matrix_region_init             # 区域初始矩阵，镜像复用和旋转复用，在进行配准时需要提前对区域
string      region_frame_path              # 区域配准帧模型
float64[]   matrix_region_regionframe      # 区域到区域配准帧的转换关系
PointSequence[] image_points                     # 像点, 用于加载可替代点位

================================================================================
MSG: dg_msgs/PointSequence
string number      # 设备组编号
ImagePoint[] points    # 机械臂拍照点位

================================================================================
MSG: dg_msgs/ImagePoint
geometry_msgs/PoseStamped pose
trajectory_msgs/JointTrajectoryPoint joint
float32 offset      # 升降柱伸缩量
string custom_message
ImageGoal image_goal
string point_file_name

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start

================================================================================
MSG: dg_msgs/ImageGoal
string id          # ID
string number     # 设备编号
int32 types     # 拍照类型，灰度为`1`，彩色为`2`，深度为`4`，点云为`8`，多种类型时按位相与
---
UniversalStateInfo  state_info

# 0 表示成功；

================================================================================
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")

(setf (get dg_msgs::RobotArmAcqModelLoadResponse :md5sum-) "7fe10d3217aaf92c81e254fca18fb315")
(setf (get dg_msgs::RobotArmAcqModelLoadResponse :datatype-) "dg_msgs/RobotArmAcqModelLoadResponse")
(setf (get dg_msgs::RobotArmAcqModelLoadResponse :definition-)
      "string      model_path                     # 区域模型
float64[]   matrix_region_init             # 区域初始矩阵，镜像复用和旋转复用，在进行配准时需要提前对区域
string      region_frame_path              # 区域配准帧模型
float64[]   matrix_region_regionframe      # 区域到区域配准帧的转换关系
PointSequence[] image_points                     # 像点, 用于加载可替代点位

================================================================================
MSG: dg_msgs/PointSequence
string number      # 设备组编号
ImagePoint[] points    # 机械臂拍照点位

================================================================================
MSG: dg_msgs/ImagePoint
geometry_msgs/PoseStamped pose
trajectory_msgs/JointTrajectoryPoint joint
float32 offset      # 升降柱伸缩量
string custom_message
ImageGoal image_goal
string point_file_name

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start

================================================================================
MSG: dg_msgs/ImageGoal
string id          # ID
string number     # 设备编号
int32 types     # 拍照类型，灰度为`1`，彩色为`2`，深度为`4`，点云为`8`，多种类型时按位相与
---
UniversalStateInfo  state_info

# 0 表示成功；

================================================================================
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")



(provide :dg_msgs/RobotArmAcqModelLoad "7fe10d3217aaf92c81e254fca18fb315")


