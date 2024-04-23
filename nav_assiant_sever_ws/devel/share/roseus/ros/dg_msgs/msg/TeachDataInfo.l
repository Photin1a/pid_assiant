;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::TeachDataInfo)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'TeachDataInfo (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::TEACHDATAINFO")
  (make-package "DG_MSGS::TEACHDATAINFO"))

(in-package "ROS")
;;//! \htmlinclude TeachDataInfo.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))


(defclass dg_msgs::TeachDataInfo
  :super ros::object
  :slots (_pose_stop_trainhead _pose_stop_region _model_type _model_path _camera_region _region_type _matrix_region_init _matrix_region_trainhead _reg_type _lidar_topic _correction_point _box_target _box_source _cruising_route_type _geometry_completion_type _pose_regionframe_region _pose_regionframe_trainhead _correction_joint _region_frame_path ))

(defmethod dg_msgs::TeachDataInfo
  (:init
   (&key
    ((:pose_stop_trainhead __pose_stop_trainhead) (instance geometry_msgs::PoseStamped :init))
    ((:pose_stop_region __pose_stop_region) (instance geometry_msgs::PoseStamped :init))
    ((:model_type __model_type) 0)
    ((:model_path __model_path) "")
    ((:camera_region __camera_region) (instance geometry_msgs::PoseArray :init))
    ((:region_type __region_type) 0)
    ((:matrix_region_init __matrix_region_init) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:matrix_region_trainhead __matrix_region_trainhead) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:reg_type __reg_type) 0)
    ((:lidar_topic __lidar_topic) "")
    ((:correction_point __correction_point) (instance dg_msgs::CorrectionPoint :init))
    ((:box_target __box_target) (instance dg_msgs::CropBox :init))
    ((:box_source __box_source) (instance dg_msgs::CropBox :init))
    ((:cruising_route_type __cruising_route_type) 0)
    ((:geometry_completion_type __geometry_completion_type) 0)
    ((:pose_regionframe_region __pose_regionframe_region) (instance geometry_msgs::PoseStamped :init))
    ((:pose_regionframe_trainhead __pose_regionframe_trainhead) (instance geometry_msgs::PoseStamped :init))
    ((:correction_joint __correction_joint) (let (r) (dotimes (i 0) (push (instance trajectory_msgs::JointTrajectoryPoint :init) r)) r))
    ((:region_frame_path __region_frame_path) "")
    )
   (send-super :init)
   (setq _pose_stop_trainhead __pose_stop_trainhead)
   (setq _pose_stop_region __pose_stop_region)
   (setq _model_type (round __model_type))
   (setq _model_path (string __model_path))
   (setq _camera_region __camera_region)
   (setq _region_type (round __region_type))
   (setq _matrix_region_init __matrix_region_init)
   (setq _matrix_region_trainhead __matrix_region_trainhead)
   (setq _reg_type (round __reg_type))
   (setq _lidar_topic (string __lidar_topic))
   (setq _correction_point __correction_point)
   (setq _box_target __box_target)
   (setq _box_source __box_source)
   (setq _cruising_route_type (round __cruising_route_type))
   (setq _geometry_completion_type (round __geometry_completion_type))
   (setq _pose_regionframe_region __pose_regionframe_region)
   (setq _pose_regionframe_trainhead __pose_regionframe_trainhead)
   (setq _correction_joint __correction_joint)
   (setq _region_frame_path (string __region_frame_path))
   self)
  (:pose_stop_trainhead
   (&rest __pose_stop_trainhead)
   (if (keywordp (car __pose_stop_trainhead))
       (send* _pose_stop_trainhead __pose_stop_trainhead)
     (progn
       (if __pose_stop_trainhead (setq _pose_stop_trainhead (car __pose_stop_trainhead)))
       _pose_stop_trainhead)))
  (:pose_stop_region
   (&rest __pose_stop_region)
   (if (keywordp (car __pose_stop_region))
       (send* _pose_stop_region __pose_stop_region)
     (progn
       (if __pose_stop_region (setq _pose_stop_region (car __pose_stop_region)))
       _pose_stop_region)))
  (:model_type
   (&optional __model_type)
   (if __model_type (setq _model_type __model_type)) _model_type)
  (:model_path
   (&optional __model_path)
   (if __model_path (setq _model_path __model_path)) _model_path)
  (:camera_region
   (&rest __camera_region)
   (if (keywordp (car __camera_region))
       (send* _camera_region __camera_region)
     (progn
       (if __camera_region (setq _camera_region (car __camera_region)))
       _camera_region)))
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
  (:pose_regionframe_region
   (&rest __pose_regionframe_region)
   (if (keywordp (car __pose_regionframe_region))
       (send* _pose_regionframe_region __pose_regionframe_region)
     (progn
       (if __pose_regionframe_region (setq _pose_regionframe_region (car __pose_regionframe_region)))
       _pose_regionframe_region)))
  (:pose_regionframe_trainhead
   (&rest __pose_regionframe_trainhead)
   (if (keywordp (car __pose_regionframe_trainhead))
       (send* _pose_regionframe_trainhead __pose_regionframe_trainhead)
     (progn
       (if __pose_regionframe_trainhead (setq _pose_regionframe_trainhead (car __pose_regionframe_trainhead)))
       _pose_regionframe_trainhead)))
  (:correction_joint
   (&rest __correction_joint)
   (if (keywordp (car __correction_joint))
       (send* _correction_joint __correction_joint)
     (progn
       (if __correction_joint (setq _correction_joint (car __correction_joint)))
       _correction_joint)))
  (:region_frame_path
   (&optional __region_frame_path)
   (if __region_frame_path (setq _region_frame_path __region_frame_path)) _region_frame_path)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _pose_stop_trainhead
    (send _pose_stop_trainhead :serialization-length)
    ;; geometry_msgs/PoseStamped _pose_stop_region
    (send _pose_stop_region :serialization-length)
    ;; int32 _model_type
    4
    ;; string _model_path
    4 (length _model_path)
    ;; geometry_msgs/PoseArray _camera_region
    (send _camera_region :serialization-length)
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
    ;; dg_msgs/CropBox _box_target
    (send _box_target :serialization-length)
    ;; dg_msgs/CropBox _box_source
    (send _box_source :serialization-length)
    ;; int32 _cruising_route_type
    4
    ;; int32 _geometry_completion_type
    4
    ;; geometry_msgs/PoseStamped _pose_regionframe_region
    (send _pose_regionframe_region :serialization-length)
    ;; geometry_msgs/PoseStamped _pose_regionframe_trainhead
    (send _pose_regionframe_trainhead :serialization-length)
    ;; trajectory_msgs/JointTrajectoryPoint[] _correction_joint
    (apply #'+ (send-all _correction_joint :serialization-length)) 4
    ;; string _region_frame_path
    4 (length _region_frame_path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _pose_stop_trainhead
       (send _pose_stop_trainhead :serialize s)
     ;; geometry_msgs/PoseStamped _pose_stop_region
       (send _pose_stop_region :serialize s)
     ;; int32 _model_type
       (write-long _model_type s)
     ;; string _model_path
       (write-long (length _model_path) s) (princ _model_path s)
     ;; geometry_msgs/PoseArray _camera_region
       (send _camera_region :serialize s)
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
     ;; dg_msgs/CropBox _box_target
       (send _box_target :serialize s)
     ;; dg_msgs/CropBox _box_source
       (send _box_source :serialize s)
     ;; int32 _cruising_route_type
       (write-long _cruising_route_type s)
     ;; int32 _geometry_completion_type
       (write-long _geometry_completion_type s)
     ;; geometry_msgs/PoseStamped _pose_regionframe_region
       (send _pose_regionframe_region :serialize s)
     ;; geometry_msgs/PoseStamped _pose_regionframe_trainhead
       (send _pose_regionframe_trainhead :serialize s)
     ;; trajectory_msgs/JointTrajectoryPoint[] _correction_joint
     (write-long (length _correction_joint) s)
     (dolist (elem _correction_joint)
       (send elem :serialize s)
       )
     ;; string _region_frame_path
       (write-long (length _region_frame_path) s) (princ _region_frame_path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _pose_stop_trainhead
     (send _pose_stop_trainhead :deserialize buf ptr-) (incf ptr- (send _pose_stop_trainhead :serialization-length))
   ;; geometry_msgs/PoseStamped _pose_stop_region
     (send _pose_stop_region :deserialize buf ptr-) (incf ptr- (send _pose_stop_region :serialization-length))
   ;; int32 _model_type
     (setq _model_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _model_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseArray _camera_region
     (send _camera_region :deserialize buf ptr-) (incf ptr- (send _camera_region :serialization-length))
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
   ;; dg_msgs/CropBox _box_target
     (send _box_target :deserialize buf ptr-) (incf ptr- (send _box_target :serialization-length))
   ;; dg_msgs/CropBox _box_source
     (send _box_source :deserialize buf ptr-) (incf ptr- (send _box_source :serialization-length))
   ;; int32 _cruising_route_type
     (setq _cruising_route_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _geometry_completion_type
     (setq _geometry_completion_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/PoseStamped _pose_regionframe_region
     (send _pose_regionframe_region :deserialize buf ptr-) (incf ptr- (send _pose_regionframe_region :serialization-length))
   ;; geometry_msgs/PoseStamped _pose_regionframe_trainhead
     (send _pose_regionframe_trainhead :deserialize buf ptr-) (incf ptr- (send _pose_regionframe_trainhead :serialization-length))
   ;; trajectory_msgs/JointTrajectoryPoint[] _correction_joint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _correction_joint (let (r) (dotimes (i n) (push (instance trajectory_msgs::JointTrajectoryPoint :init) r)) r))
     (dolist (elem- _correction_joint)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _region_frame_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _region_frame_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dg_msgs::TeachDataInfo :md5sum-) "59cc7fe46999dbd644086ba85abbce76")
(setf (get dg_msgs::TeachDataInfo :datatype-) "dg_msgs/TeachDataInfo")
(setf (get dg_msgs::TeachDataInfo :definition-)
      "geometry_msgs/PoseStamped pose_stop_trainhead
geometry_msgs/PoseStamped pose_stop_region
int32                     model_type
string                    model_path
geometry_msgs/PoseArray   camera_region
int32                     region_type           # 区域类型，0直接复用，1镜像复用，2旋转180复用
float64[]                 matrix_region_init
float64[]                 matrix_region_trainhead
int32                     reg_type              # 配准采集数据类型， 0为相机，1为雷达
string                    lidar_topic
CorrectionPoint           correction_point
CropBox                   box_target
CropBox                   box_source
int32                     cruising_route_type
int32                     geometry_completion_type
geometry_msgs/PoseStamped pose_regionframe_region
geometry_msgs/PoseStamped pose_regionframe_trainhead
trajectory_msgs/JointTrajectoryPoint[]                          correction_joint
string                      region_frame_path
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
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

================================================================================
MSG: dg_msgs/CorrectionPoint
string number                                   # 设备组编号
geometry_msgs/PoseStamped pose                  # 相机目标点的pose
float32 offset                                  # 升降柱伸缩量
string custom_message
================================================================================
MSG: dg_msgs/CropBox
float32[] center_
float32[] R_euler
float32[] extent_
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

")



(provide :dg_msgs/TeachDataInfo "59cc7fe46999dbd644086ba85abbce76")


