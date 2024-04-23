;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::RobotArmAcqReady)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'RobotArmAcqReady (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::ROBOTARMACQREADY")
  (make-package "DG_MSGS::ROBOTARMACQREADY"))
(unless (find-package "DG_MSGS::ROBOTARMACQREADYREQUEST")
  (make-package "DG_MSGS::ROBOTARMACQREADYREQUEST"))
(unless (find-package "DG_MSGS::ROBOTARMACQREADYRESPONSE")
  (make-package "DG_MSGS::ROBOTARMACQREADYRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass dg_msgs::RobotArmAcqReadyRequest
  :super ros::object
  :slots (_relative_pose _model_path _model_type _region_type _reg_type _lidar_topic _correction_point _correction_joint _matrix_region_trainhead _box_target _box_source _image_points _region_frame_path _matrix_region_regionframe ))

(defmethod dg_msgs::RobotArmAcqReadyRequest
  (:init
   (&key
    ((:relative_pose __relative_pose) (instance geometry_msgs::PoseStamped :init))
    ((:model_path __model_path) "")
    ((:model_type __model_type) 0)
    ((:region_type __region_type) 0)
    ((:reg_type __reg_type) 0)
    ((:lidar_topic __lidar_topic) "")
    ((:correction_point __correction_point) (instance dg_msgs::CorrectionPoint :init))
    ((:correction_joint __correction_joint) (instance dg_msgs::CorrectionJoint :init))
    ((:matrix_region_trainhead __matrix_region_trainhead) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:box_target __box_target) (instance dg_msgs::CropBox :init))
    ((:box_source __box_source) (instance dg_msgs::CropBox :init))
    ((:image_points __image_points) (let (r) (dotimes (i 0) (push (instance dg_msgs::PointSequence :init) r)) r))
    ((:region_frame_path __region_frame_path) "")
    ((:matrix_region_regionframe __matrix_region_regionframe) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _relative_pose __relative_pose)
   (setq _model_path (string __model_path))
   (setq _model_type (round __model_type))
   (setq _region_type (round __region_type))
   (setq _reg_type (round __reg_type))
   (setq _lidar_topic (string __lidar_topic))
   (setq _correction_point __correction_point)
   (setq _correction_joint __correction_joint)
   (setq _matrix_region_trainhead __matrix_region_trainhead)
   (setq _box_target __box_target)
   (setq _box_source __box_source)
   (setq _image_points __image_points)
   (setq _region_frame_path (string __region_frame_path))
   (setq _matrix_region_regionframe __matrix_region_regionframe)
   self)
  (:relative_pose
   (&rest __relative_pose)
   (if (keywordp (car __relative_pose))
       (send* _relative_pose __relative_pose)
     (progn
       (if __relative_pose (setq _relative_pose (car __relative_pose)))
       _relative_pose)))
  (:model_path
   (&optional __model_path)
   (if __model_path (setq _model_path __model_path)) _model_path)
  (:model_type
   (&optional __model_type)
   (if __model_type (setq _model_type __model_type)) _model_type)
  (:region_type
   (&optional __region_type)
   (if __region_type (setq _region_type __region_type)) _region_type)
  (:reg_type
   (&optional __reg_type)
   (if __reg_type (setq _reg_type __reg_type)) _reg_type)
  (:lidar_topic
   (&optional __lidar_topic)
   (if __lidar_topic (setq _lidar_topic __lidar_topic)) _lidar_topic)
  (:correction_point
   (&rest __correction_point)
   (if (keywordp (car __correction_point))
       (send* _correction_point __correction_point)
     (progn
       (if __correction_point (setq _correction_point (car __correction_point)))
       _correction_point)))
  (:correction_joint
   (&rest __correction_joint)
   (if (keywordp (car __correction_joint))
       (send* _correction_joint __correction_joint)
     (progn
       (if __correction_joint (setq _correction_joint (car __correction_joint)))
       _correction_joint)))
  (:matrix_region_trainhead
   (&optional __matrix_region_trainhead)
   (if __matrix_region_trainhead (setq _matrix_region_trainhead __matrix_region_trainhead)) _matrix_region_trainhead)
  (:box_target
   (&rest __box_target)
   (if (keywordp (car __box_target))
       (send* _box_target __box_target)
     (progn
       (if __box_target (setq _box_target (car __box_target)))
       _box_target)))
  (:box_source
   (&rest __box_source)
   (if (keywordp (car __box_source))
       (send* _box_source __box_source)
     (progn
       (if __box_source (setq _box_source (car __box_source)))
       _box_source)))
  (:image_points
   (&rest __image_points)
   (if (keywordp (car __image_points))
       (send* _image_points __image_points)
     (progn
       (if __image_points (setq _image_points (car __image_points)))
       _image_points)))
  (:region_frame_path
   (&optional __region_frame_path)
   (if __region_frame_path (setq _region_frame_path __region_frame_path)) _region_frame_path)
  (:matrix_region_regionframe
   (&optional __matrix_region_regionframe)
   (if __matrix_region_regionframe (setq _matrix_region_regionframe __matrix_region_regionframe)) _matrix_region_regionframe)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _relative_pose
    (send _relative_pose :serialization-length)
    ;; string _model_path
    4 (length _model_path)
    ;; int32 _model_type
    4
    ;; int32 _region_type
    4
    ;; int32 _reg_type
    4
    ;; string _lidar_topic
    4 (length _lidar_topic)
    ;; dg_msgs/CorrectionPoint _correction_point
    (send _correction_point :serialization-length)
    ;; dg_msgs/CorrectionJoint _correction_joint
    (send _correction_joint :serialization-length)
    ;; float64[] _matrix_region_trainhead
    (* 8    (length _matrix_region_trainhead)) 4
    ;; dg_msgs/CropBox _box_target
    (send _box_target :serialization-length)
    ;; dg_msgs/CropBox _box_source
    (send _box_source :serialization-length)
    ;; dg_msgs/PointSequence[] _image_points
    (apply #'+ (send-all _image_points :serialization-length)) 4
    ;; string _region_frame_path
    4 (length _region_frame_path)
    ;; float64[] _matrix_region_regionframe
    (* 8    (length _matrix_region_regionframe)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _relative_pose
       (send _relative_pose :serialize s)
     ;; string _model_path
       (write-long (length _model_path) s) (princ _model_path s)
     ;; int32 _model_type
       (write-long _model_type s)
     ;; int32 _region_type
       (write-long _region_type s)
     ;; int32 _reg_type
       (write-long _reg_type s)
     ;; string _lidar_topic
       (write-long (length _lidar_topic) s) (princ _lidar_topic s)
     ;; dg_msgs/CorrectionPoint _correction_point
       (send _correction_point :serialize s)
     ;; dg_msgs/CorrectionJoint _correction_joint
       (send _correction_joint :serialize s)
     ;; float64[] _matrix_region_trainhead
     (write-long (length _matrix_region_trainhead) s)
     (dotimes (i (length _matrix_region_trainhead))
       (sys::poke (elt _matrix_region_trainhead i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; dg_msgs/CropBox _box_target
       (send _box_target :serialize s)
     ;; dg_msgs/CropBox _box_source
       (send _box_source :serialize s)
     ;; dg_msgs/PointSequence[] _image_points
     (write-long (length _image_points) s)
     (dolist (elem _image_points)
       (send elem :serialize s)
       )
     ;; string _region_frame_path
       (write-long (length _region_frame_path) s) (princ _region_frame_path s)
     ;; float64[] _matrix_region_regionframe
     (write-long (length _matrix_region_regionframe) s)
     (dotimes (i (length _matrix_region_regionframe))
       (sys::poke (elt _matrix_region_regionframe i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _relative_pose
     (send _relative_pose :deserialize buf ptr-) (incf ptr- (send _relative_pose :serialization-length))
   ;; string _model_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _model_type
     (setq _model_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _region_type
     (setq _region_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _reg_type
     (setq _reg_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _lidar_topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lidar_topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; dg_msgs/CorrectionPoint _correction_point
     (send _correction_point :deserialize buf ptr-) (incf ptr- (send _correction_point :serialization-length))
   ;; dg_msgs/CorrectionJoint _correction_joint
     (send _correction_joint :deserialize buf ptr-) (incf ptr- (send _correction_joint :serialization-length))
   ;; float64[] _matrix_region_trainhead
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _matrix_region_trainhead (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _matrix_region_trainhead i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; dg_msgs/CropBox _box_target
     (send _box_target :deserialize buf ptr-) (incf ptr- (send _box_target :serialization-length))
   ;; dg_msgs/CropBox _box_source
     (send _box_source :deserialize buf ptr-) (incf ptr- (send _box_source :serialization-length))
   ;; dg_msgs/PointSequence[] _image_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _image_points (let (r) (dotimes (i n) (push (instance dg_msgs::PointSequence :init) r)) r))
     (dolist (elem- _image_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
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
   ;;
   self)
  )

(defclass dg_msgs::RobotArmAcqReadyResponse
  :super ros::object
  :slots (_correction_pose _state_info ))

(defmethod dg_msgs::RobotArmAcqReadyResponse
  (:init
   (&key
    ((:correction_pose __correction_pose) (instance geometry_msgs::Pose :init))
    ((:state_info __state_info) (instance dg_msgs::UniversalStateInfo :init))
    )
   (send-super :init)
   (setq _correction_pose __correction_pose)
   (setq _state_info __state_info)
   self)
  (:correction_pose
   (&rest __correction_pose)
   (if (keywordp (car __correction_pose))
       (send* _correction_pose __correction_pose)
     (progn
       (if __correction_pose (setq _correction_pose (car __correction_pose)))
       _correction_pose)))
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
    ;; geometry_msgs/Pose _correction_pose
    (send _correction_pose :serialization-length)
    ;; dg_msgs/UniversalStateInfo _state_info
    (send _state_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _correction_pose
       (send _correction_pose :serialize s)
     ;; dg_msgs/UniversalStateInfo _state_info
       (send _state_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _correction_pose
     (send _correction_pose :deserialize buf ptr-) (incf ptr- (send _correction_pose :serialization-length))
   ;; dg_msgs/UniversalStateInfo _state_info
     (send _state_info :deserialize buf ptr-) (incf ptr- (send _state_info :serialization-length))
   ;;
   self)
  )

(defclass dg_msgs::RobotArmAcqReady
  :super ros::object
  :slots ())

(setf (get dg_msgs::RobotArmAcqReady :md5sum-) "cbf1e625d3f15ef072b993fe724f8a83")
(setf (get dg_msgs::RobotArmAcqReady :datatype-) "dg_msgs/RobotArmAcqReady")
(setf (get dg_msgs::RobotArmAcqReady :request) dg_msgs::RobotArmAcqReadyRequest)
(setf (get dg_msgs::RobotArmAcqReady :response) dg_msgs::RobotArmAcqReadyResponse)

(defmethod dg_msgs::RobotArmAcqReadyRequest
  (:response () (instance dg_msgs::RobotArmAcqReadyResponse :init)))

(setf (get dg_msgs::RobotArmAcqReadyRequest :md5sum-) "cbf1e625d3f15ef072b993fe724f8a83")
(setf (get dg_msgs::RobotArmAcqReadyRequest :datatype-) "dg_msgs/RobotArmAcqReadyRequest")
(setf (get dg_msgs::RobotArmAcqReadyRequest :definition-)
      "geometry_msgs/PoseStamped relative_pose          # 停车点位置(相对位置)
string model_path                                # 转向架数据模型
int32 model_type                                 # 模型类型（车头： 1，转向架： 2）
int32 region_type
int32 reg_type                                   # 配准采集数据类型， 0为相机，1为雷达
string lidar_topic                               # 雷达topic，用于确定使用哪个雷达采集数据
CorrectionPoint correction_point                 # 纠偏点，配准采集选择相机，相机需要移动到correction_point里传进来的pose, pose是存储在区域坐标系下的，配合relative_pose使用
CorrectionJoint correction_joint                        # 纠偏轨迹
float64[] matrix_region_trainhead                          # 区域转换矩阵
CropBox box_target
CropBox box_source
PointSequence[] image_points                     # 像点，运动规划

string region_frame_path                                # 区域配准帧文件路径
float64[] matrix_region_regionframe                     # 区域到区域配准帧的配准结果


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
MSG: dg_msgs/CorrectionPoint
string number                                   # 设备组编号
geometry_msgs/PoseStamped pose                  # 相机目标点的pose
float32 offset                                  # 升降柱伸缩量
string custom_message
================================================================================
MSG: dg_msgs/CorrectionJoint
#纠偏轨迹
string number       # 设备编码
trajectory_msgs/JointTrajectoryPoint[] joints # 机械臂关节位置
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
MSG: dg_msgs/CropBox
float32[] center_
float32[] R_euler
float32[] extent_
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
MSG: dg_msgs/ImageGoal
string id          # ID
string number     # 设备编号
int32 types     # 拍照类型，灰度为`1`，彩色为`2`，深度为`4`，点云为`8`，多种类型时按位相与
---
geometry_msgs/Pose  correction_pose              # 反馈给中心节点停车点位的位移偏差(用于里程计校准)
UniversalStateInfo  state_info                   # error 1 机械臂初始位置错误；2 坑道模型加载错误；3 转向架模型加载失败；
                                                 # 4 配准服务调用失败；5 机械臂运动失败；6 机械臂规划到纠偏点位失败；
                                                 # 7 外部轴运动失败；8 终止指令返回；
                                                 # warning  9 暂停指令返回；

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
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")

(setf (get dg_msgs::RobotArmAcqReadyResponse :md5sum-) "cbf1e625d3f15ef072b993fe724f8a83")
(setf (get dg_msgs::RobotArmAcqReadyResponse :datatype-) "dg_msgs/RobotArmAcqReadyResponse")
(setf (get dg_msgs::RobotArmAcqReadyResponse :definition-)
      "geometry_msgs/PoseStamped relative_pose          # 停车点位置(相对位置)
string model_path                                # 转向架数据模型
int32 model_type                                 # 模型类型（车头： 1，转向架： 2）
int32 region_type
int32 reg_type                                   # 配准采集数据类型， 0为相机，1为雷达
string lidar_topic                               # 雷达topic，用于确定使用哪个雷达采集数据
CorrectionPoint correction_point                 # 纠偏点，配准采集选择相机，相机需要移动到correction_point里传进来的pose, pose是存储在区域坐标系下的，配合relative_pose使用
CorrectionJoint correction_joint                        # 纠偏轨迹
float64[] matrix_region_trainhead                          # 区域转换矩阵
CropBox box_target
CropBox box_source
PointSequence[] image_points                     # 像点，运动规划

string region_frame_path                                # 区域配准帧文件路径
float64[] matrix_region_regionframe                     # 区域到区域配准帧的配准结果


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
MSG: dg_msgs/CorrectionPoint
string number                                   # 设备组编号
geometry_msgs/PoseStamped pose                  # 相机目标点的pose
float32 offset                                  # 升降柱伸缩量
string custom_message
================================================================================
MSG: dg_msgs/CorrectionJoint
#纠偏轨迹
string number       # 设备编码
trajectory_msgs/JointTrajectoryPoint[] joints # 机械臂关节位置
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
MSG: dg_msgs/CropBox
float32[] center_
float32[] R_euler
float32[] extent_
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
MSG: dg_msgs/ImageGoal
string id          # ID
string number     # 设备编号
int32 types     # 拍照类型，灰度为`1`，彩色为`2`，深度为`4`，点云为`8`，多种类型时按位相与
---
geometry_msgs/Pose  correction_pose              # 反馈给中心节点停车点位的位移偏差(用于里程计校准)
UniversalStateInfo  state_info                   # error 1 机械臂初始位置错误；2 坑道模型加载错误；3 转向架模型加载失败；
                                                 # 4 配准服务调用失败；5 机械臂运动失败；6 机械臂规划到纠偏点位失败；
                                                 # 7 外部轴运动失败；8 终止指令返回；
                                                 # warning  9 暂停指令返回；

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
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")



(provide :dg_msgs/RobotArmAcqReady "cbf1e625d3f15ef072b993fe724f8a83")


