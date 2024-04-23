;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::PointSequence)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'PointSequence (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::POINTSEQUENCE")
  (make-package "DG_MSGS::POINTSEQUENCE"))

(in-package "ROS")
;;//! \htmlinclude PointSequence.msg.html


(defclass dg_msgs::PointSequence
  :super ros::object
  :slots (_number _points ))

(defmethod dg_msgs::PointSequence
  (:init
   (&key
    ((:number __number) "")
    ((:points __points) (let (r) (dotimes (i 0) (push (instance dg_msgs::ImagePoint :init) r)) r))
    )
   (send-super :init)
   (setq _number (string __number))
   (setq _points __points)
   self)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; string _number
    4 (length _number)
    ;; dg_msgs/ImagePoint[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _number
       (write-long (length _number) s) (princ _number s)
     ;; dg_msgs/ImagePoint[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; dg_msgs/ImagePoint[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance dg_msgs::ImagePoint :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get dg_msgs::PointSequence :md5sum-) "b0d9a719acd34e16fa2945a901af80a3")
(setf (get dg_msgs::PointSequence :datatype-) "dg_msgs/PointSequence")
(setf (get dg_msgs::PointSequence :definition-)
      "string number      # 设备组编号
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

")



(provide :dg_msgs/PointSequence "b0d9a719acd34e16fa2945a901af80a3")


