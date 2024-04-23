;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::ImagePoint)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'ImagePoint (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::IMAGEPOINT")
  (make-package "DG_MSGS::IMAGEPOINT"))

(in-package "ROS")
;;//! \htmlinclude ImagePoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))


(defclass dg_msgs::ImagePoint
  :super ros::object
  :slots (_pose _joint _offset _custom_message _image_goal _point_file_name ))

(defmethod dg_msgs::ImagePoint
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:joint __joint) (instance trajectory_msgs::JointTrajectoryPoint :init))
    ((:offset __offset) 0.0)
    ((:custom_message __custom_message) "")
    ((:image_goal __image_goal) (instance dg_msgs::ImageGoal :init))
    ((:point_file_name __point_file_name) "")
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _joint __joint)
   (setq _offset (float __offset))
   (setq _custom_message (string __custom_message))
   (setq _image_goal __image_goal)
   (setq _point_file_name (string __point_file_name))
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:joint
   (&rest __joint)
   (if (keywordp (car __joint))
       (send* _joint __joint)
     (progn
       (if __joint (setq _joint (car __joint)))
       _joint)))
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:custom_message
   (&optional __custom_message)
   (if __custom_message (setq _custom_message __custom_message)) _custom_message)
  (:image_goal
   (&rest __image_goal)
   (if (keywordp (car __image_goal))
       (send* _image_goal __image_goal)
     (progn
       (if __image_goal (setq _image_goal (car __image_goal)))
       _image_goal)))
  (:point_file_name
   (&optional __point_file_name)
   (if __point_file_name (setq _point_file_name __point_file_name)) _point_file_name)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; trajectory_msgs/JointTrajectoryPoint _joint
    (send _joint :serialization-length)
    ;; float32 _offset
    4
    ;; string _custom_message
    4 (length _custom_message)
    ;; dg_msgs/ImageGoal _image_goal
    (send _image_goal :serialization-length)
    ;; string _point_file_name
    4 (length _point_file_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; trajectory_msgs/JointTrajectoryPoint _joint
       (send _joint :serialize s)
     ;; float32 _offset
       (sys::poke _offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _custom_message
       (write-long (length _custom_message) s) (princ _custom_message s)
     ;; dg_msgs/ImageGoal _image_goal
       (send _image_goal :serialize s)
     ;; string _point_file_name
       (write-long (length _point_file_name) s) (princ _point_file_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; trajectory_msgs/JointTrajectoryPoint _joint
     (send _joint :deserialize buf ptr-) (incf ptr- (send _joint :serialization-length))
   ;; float32 _offset
     (setq _offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _custom_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _custom_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; dg_msgs/ImageGoal _image_goal
     (send _image_goal :deserialize buf ptr-) (incf ptr- (send _image_goal :serialization-length))
   ;; string _point_file_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _point_file_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dg_msgs::ImagePoint :md5sum-) "c622e2a85a7ab256c39a58e6fc6bff26")
(setf (get dg_msgs::ImagePoint :datatype-) "dg_msgs/ImagePoint")
(setf (get dg_msgs::ImagePoint :definition-)
      "geometry_msgs/PoseStamped pose
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



(provide :dg_msgs/ImagePoint "c622e2a85a7ab256c39a58e6fc6bff26")


