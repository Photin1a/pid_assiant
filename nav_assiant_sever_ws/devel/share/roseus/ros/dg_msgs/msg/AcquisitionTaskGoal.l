;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::AcquisitionTaskGoal)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'AcquisitionTaskGoal (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::ACQUISITIONTASKGOAL")
  (make-package "DG_MSGS::ACQUISITIONTASKGOAL"))

(in-package "ROS")
;;//! \htmlinclude AcquisitionTaskGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass dg_msgs::AcquisitionTaskGoal
  :super ros::object
  :slots (_id _pose _relative_pose _model_type _model_path _region_frame_path _matrix_region_regionframe _directory _image_points _custom_message _region_type _matrix_region_init _matrix_region_trainhead _reg_type _lidar_topic _correction_point _correction_joint _box_target _box_source _cruising_route_type _geometry_completion_type ))

(defmethod dg_msgs::AcquisitionTaskGoal
  (:init
   (&key
    ((:id __id) "")
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:relative_pose __relative_pose) (instance geometry_msgs::PoseStamped :init))
    ((:model_type __model_type) 0)
    ((:model_path __model_path) "")
    ((:region_frame_path __region_frame_path) "")
    ((:matrix_region_regionframe __matrix_region_regionframe) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:directory __directory) "")
    ((:image_points __image_points) (let (r) (dotimes (i 0) (push (instance dg_msgs::PointSequence :init) r)) r))
    ((:custom_message __custom_message) "")
    ((:region_type __region_type) 0)
    ((:matrix_region_init __matrix_region_init) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:matrix_region_trainhead __matrix_region_trainhead) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:reg_type __reg_type) 0)
    ((:lidar_topic __lidar_topic) "")
    ((:correction_point __correction_point) (instance dg_msgs::CorrectionPoint :init))
    ((:correction_joint __correction_joint) (instance dg_msgs::CorrectionJoint :init))
    ((:box_target __box_target) (instance dg_msgs::CropBox :init))
    ((:box_source __box_source) (instance dg_msgs::CropBox :init))
    ((:cruising_route_type __cruising_route_type) 0)
    ((:geometry_completion_type __geometry_completion_type) 0)
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _pose __pose)
   (setq _relative_pose __relative_pose)
   (setq _model_type (round __model_type))
   (setq _model_path (string __model_path))
   (setq _region_frame_path (string __region_frame_path))
   (setq _matrix_region_regionframe __matrix_region_regionframe)
   (setq _directory (string __directory))
   (setq _image_points __image_points)
   (setq _custom_message (string __custom_message))
   (setq _region_type (round __region_type))
   (setq _matrix_region_init __matrix_region_init)
   (setq _matrix_region_trainhead __matrix_region_trainhead)
   (setq _reg_type (round __reg_type))
   (setq _lidar_topic (string __lidar_topic))
   (setq _correction_point __correction_point)
   (setq _correction_joint __correction_joint)
   (setq _box_target __box_target)
   (setq _box_source __box_source)
   (setq _cruising_route_type (round __cruising_route_type))
   (setq _geometry_completion_type (round __geometry_completion_type))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:relative_pose
   (&rest __relative_pose)
   (if (keywordp (car __relative_pose))
       (send* _relative_pose __relative_pose)
     (progn
       (if __relative_pose (setq _relative_pose (car __relative_pose)))
       _relative_pose)))
  (:model_type
   (&optional __model_type)
   (if __model_type (setq _model_type __model_type)) _model_type)
  (:model_path
   (&optional __model_path)
   (if __model_path (setq _model_path __model_path)) _model_path)
  (:region_frame_path
   (&optional __region_frame_path)
   (if __region_frame_path (setq _region_frame_path __region_frame_path)) _region_frame_path)
  (:matrix_region_regionframe
   (&optional __matrix_region_regionframe)
   (if __matrix_region_regionframe (setq _matrix_region_regionframe __matrix_region_regionframe)) _matrix_region_regionframe)
  (:directory
   (&optional __directory)
   (if __directory (setq _directory __directory)) _directory)
  (:image_points
   (&rest __image_points)
   (if (keywordp (car __image_points))
       (send* _image_points __image_points)
     (progn
       (if __image_points (setq _image_points (car __image_points)))
       _image_points)))
  (:custom_message
   (&optional __custom_message)
   (if __custom_message (setq _custom_message __custom_message)) _custom_message)
  (:region_type
   (&optional __region_type)
   (if __region_type (setq _region_type __region_type)) _region_type)
  (:matrix_region_init
   (&optional __matrix_region_init)
   (if __matrix_region_init (setq _matrix_region_init __matrix_region_init)) _matrix_region_init)
  (:matrix_region_trainhead
   (&optional __matrix_region_trainhead)
   (if __matrix_region_trainhead (setq _matrix_region_trainhead __matrix_region_trainhead)) _matrix_region_trainhead)
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
  (:cruising_route_type
   (&optional __cruising_route_type)
   (if __cruising_route_type (setq _cruising_route_type __cruising_route_type)) _cruising_route_type)
  (:geometry_completion_type
   (&optional __geometry_completion_type)
   (if __geometry_completion_type (setq _geometry_completion_type __geometry_completion_type)) _geometry_completion_type)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/PoseStamped _relative_pose
    (send _relative_pose :serialization-length)
    ;; int32 _model_type
    4
    ;; string _model_path
    4 (length _model_path)
    ;; string _region_frame_path
    4 (length _region_frame_path)
    ;; float64[] _matrix_region_regionframe
    (* 8    (length _matrix_region_regionframe)) 4
    ;; string _directory
    4 (length _directory)
    ;; dg_msgs/PointSequence[] _image_points
    (apply #'+ (send-all _image_points :serialization-length)) 4
    ;; string _custom_message
    4 (length _custom_message)
    ;; int32 _region_type
    4
    ;; float64[] _matrix_region_init
    (* 8    (length _matrix_region_init)) 4
    ;; float64[] _matrix_region_trainhead
    (* 8    (length _matrix_region_trainhead)) 4
    ;; int32 _reg_type
    4
    ;; string _lidar_topic
    4 (length _lidar_topic)
    ;; dg_msgs/CorrectionPoint _correction_point
    (send _correction_point :serialization-length)
    ;; dg_msgs/CorrectionJoint _correction_joint
    (send _correction_joint :serialization-length)
    ;; dg_msgs/CropBox _box_target
    (send _box_target :serialization-length)
    ;; dg_msgs/CropBox _box_source
    (send _box_source :serialization-length)
    ;; int32 _cruising_route_type
    4
    ;; int32 _geometry_completion_type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; geometry_msgs/PoseStamped _relative_pose
       (send _relative_pose :serialize s)
     ;; int32 _model_type
       (write-long _model_type s)
     ;; string _model_path
       (write-long (length _model_path) s) (princ _model_path s)
     ;; string _region_frame_path
       (write-long (length _region_frame_path) s) (princ _region_frame_path s)
     ;; float64[] _matrix_region_regionframe
     (write-long (length _matrix_region_regionframe) s)
     (dotimes (i (length _matrix_region_regionframe))
       (sys::poke (elt _matrix_region_regionframe i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; string _directory
       (write-long (length _directory) s) (princ _directory s)
     ;; dg_msgs/PointSequence[] _image_points
     (write-long (length _image_points) s)
     (dolist (elem _image_points)
       (send elem :serialize s)
       )
     ;; string _custom_message
       (write-long (length _custom_message) s) (princ _custom_message s)
     ;; int32 _region_type
       (write-long _region_type s)
     ;; float64[] _matrix_region_init
     (write-long (length _matrix_region_init) s)
     (dotimes (i (length _matrix_region_init))
       (sys::poke (elt _matrix_region_init i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _matrix_region_trainhead
     (write-long (length _matrix_region_trainhead) s)
     (dotimes (i (length _matrix_region_trainhead))
       (sys::poke (elt _matrix_region_trainhead i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int32 _reg_type
       (write-long _reg_type s)
     ;; string _lidar_topic
       (write-long (length _lidar_topic) s) (princ _lidar_topic s)
     ;; dg_msgs/CorrectionPoint _correction_point
       (send _correction_point :serialize s)
     ;; dg_msgs/CorrectionJoint _correction_joint
       (send _correction_joint :serialize s)
     ;; dg_msgs/CropBox _box_target
       (send _box_target :serialize s)
     ;; dg_msgs/CropBox _box_source
       (send _box_source :serialize s)
     ;; int32 _cruising_route_type
       (write-long _cruising_route_type s)
     ;; int32 _geometry_completion_type
       (write-long _geometry_completion_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/PoseStamped _relative_pose
     (send _relative_pose :deserialize buf ptr-) (incf ptr- (send _relative_pose :serialization-length))
   ;; int32 _model_type
     (setq _model_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _model_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _region_frame_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _region_frame_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[] _matrix_region_regionframe
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _matrix_region_regionframe (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _matrix_region_regionframe i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; string _directory
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _directory (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; dg_msgs/PointSequence[] _image_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _image_points (let (r) (dotimes (i n) (push (instance dg_msgs::PointSequence :init) r)) r))
     (dolist (elem- _image_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _custom_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _custom_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _region_type
     (setq _region_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _matrix_region_init
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _matrix_region_init (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _matrix_region_init i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _matrix_region_trainhead
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _matrix_region_trainhead (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _matrix_region_trainhead i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; int32 _reg_type
     (setq _reg_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _lidar_topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lidar_topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; dg_msgs/CorrectionPoint _correction_point
     (send _correction_point :deserialize buf ptr-) (incf ptr- (send _correction_point :serialization-length))
   ;; dg_msgs/CorrectionJoint _correction_joint
     (send _correction_joint :deserialize buf ptr-) (incf ptr- (send _correction_joint :serialization-length))
   ;; dg_msgs/CropBox _box_target
     (send _box_target :deserialize buf ptr-) (incf ptr- (send _box_target :serialization-length))
   ;; dg_msgs/CropBox _box_source
     (send _box_source :deserialize buf ptr-) (incf ptr- (send _box_source :serialization-length))
   ;; int32 _cruising_route_type
     (setq _cruising_route_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _geometry_completion_type
     (setq _geometry_completion_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dg_msgs::AcquisitionTaskGoal :md5sum-) "9424e9c1673e8caa2db13d0a787dd34b")
(setf (get dg_msgs::AcquisitionTaskGoal :datatype-) "dg_msgs/AcquisitionTaskGoal")
(setf (get dg_msgs::AcquisitionTaskGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
string id
geometry_msgs/PoseStamped pose                          # 停车点位置(相对于车头（train_head）坐标系下的位置关系)
geometry_msgs/PoseStamped relative_pose                 # 停车点位置(相对于区域（region）坐标系下的位置关系)
int32 model_type                                        # 模型类型（车头： 1，区域： 2）
string model_path                                       # 车头、区域模型文件路径
string region_frame_path                                # 区域配准帧文件路径
float64[] matrix_region_regionframe                     # 区域到区域配准帧的配准结果

string directory                                        # 图片存放目录
PointSequence[] image_points                            # 像点
string custom_message                                   # 自定义信息

int32 region_type                                       # 区域类型，0直接复用，1镜像复用，2旋转180复用
float64[] matrix_region_init                            # 区域初始矩阵，镜像复用和旋转复用，在进行配准时需要提前对区域进行镜像和旋转
float64[] matrix_region_trainhead                       # 区域转换矩阵，区域在车头坐标系下的位置关系, 作为配准时的target的初始值
int32 reg_type                                          # 配准采集数据类型， 0为相机，1为雷达
string lidar_topic                                      # 雷达topic，用于确定使用哪个雷达采集数据
CorrectionPoint correction_point                        # 纠偏点，配准采集选择相机，相机需要移动到correction_point里传进来的pose, pose是存储在区域坐标系下的，配合relative_pose使用
CorrectionJoint correction_joint                        # 纠偏轨迹
CropBox box_target                                      # 配准所需要的target框
CropBox box_source                                      # 配准所需要的source框

int32 cruising_route_type								# 0 坑道内巡检路线，1 车侧巡检路线
int32 geometry_completion_type							# 几何体补全类型，0 柱体

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
MSG: dg_msgs/CropBox
float32[] center_
float32[] R_euler
float32[] extent_
")



(provide :dg_msgs/AcquisitionTaskGoal "9424e9c1673e8caa2db13d0a787dd34b")


