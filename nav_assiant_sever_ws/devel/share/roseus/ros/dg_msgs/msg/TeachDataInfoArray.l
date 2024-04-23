;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::TeachDataInfoArray)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'TeachDataInfoArray (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::TEACHDATAINFOARRAY")
  (make-package "DG_MSGS::TEACHDATAINFOARRAY"))

(in-package "ROS")
;;//! \htmlinclude TeachDataInfoArray.msg.html


(defclass dg_msgs::TeachDataInfoArray
  :super ros::object
  :slots (_TeachData ))

(defmethod dg_msgs::TeachDataInfoArray
  (:init
   (&key
    ((:TeachData __TeachData) (let (r) (dotimes (i 0) (push (instance dg_msgs::TeachDataInfo :init) r)) r))
    )
   (send-super :init)
   (setq _TeachData __TeachData)
   self)
  (:TeachData
   (&rest __TeachData)
   (if (keywordp (car __TeachData))
       (send* _TeachData __TeachData)
     (progn
       (if __TeachData (setq _TeachData (car __TeachData)))
       _TeachData)))
  (:serialization-length
   ()
   (+
    ;; dg_msgs/TeachDataInfo[] _TeachData
    (apply #'+ (send-all _TeachData :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dg_msgs/TeachDataInfo[] _TeachData
     (write-long (length _TeachData) s)
     (dolist (elem _TeachData)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dg_msgs/TeachDataInfo[] _TeachData
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _TeachData (let (r) (dotimes (i n) (push (instance dg_msgs::TeachDataInfo :init) r)) r))
     (dolist (elem- _TeachData)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get dg_msgs::TeachDataInfoArray :md5sum-) "b4e006fa993775aa9be2a4055f4cff48")
(setf (get dg_msgs::TeachDataInfoArray :datatype-) "dg_msgs/TeachDataInfoArray")
(setf (get dg_msgs::TeachDataInfoArray :definition-)
      "TeachDataInfo[]     TeachData
================================================================================
MSG: dg_msgs/TeachDataInfo
geometry_msgs/PoseStamped pose_stop_trainhead
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



(provide :dg_msgs/TeachDataInfoArray "b4e006fa993775aa9be2a4055f4cff48")


