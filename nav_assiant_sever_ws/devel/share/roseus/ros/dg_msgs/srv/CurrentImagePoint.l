;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::CurrentImagePoint)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'CurrentImagePoint (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::CURRENTIMAGEPOINT")
  (make-package "DG_MSGS::CURRENTIMAGEPOINT"))
(unless (find-package "DG_MSGS::CURRENTIMAGEPOINTREQUEST")
  (make-package "DG_MSGS::CURRENTIMAGEPOINTREQUEST"))
(unless (find-package "DG_MSGS::CURRENTIMAGEPOINTRESPONSE")
  (make-package "DG_MSGS::CURRENTIMAGEPOINTRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))


(defclass dg_msgs::CurrentImagePointRequest
  :super ros::object
  :slots (_number _check_position ))

(defmethod dg_msgs::CurrentImagePointRequest
  (:init
   (&key
    ((:number __number) "")
    ((:check_position __check_position) nil)
    )
   (send-super :init)
   (setq _number (string __number))
   (setq _check_position __check_position)
   self)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:check_position
   (&optional __check_position)
   (if __check_position (setq _check_position __check_position)) _check_position)
  (:serialization-length
   ()
   (+
    ;; string _number
    4 (length _number)
    ;; bool _check_position
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _number
       (write-long (length _number) s) (princ _number s)
     ;; bool _check_position
       (if _check_position (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _check_position
     (setq _check_position (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dg_msgs::CurrentImagePointResponse
  :super ros::object
  :slots (_result _pose _joint _offset _custom_message ))

(defmethod dg_msgs::CurrentImagePointResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:joint __joint) (instance trajectory_msgs::JointTrajectoryPoint :init))
    ((:offset __offset) 0.0)
    ((:custom_message __custom_message) "")
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _pose __pose)
   (setq _joint __joint)
   (setq _offset (float __offset))
   (setq _custom_message (string __custom_message))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
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
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; trajectory_msgs/JointTrajectoryPoint _joint
    (send _joint :serialization-length)
    ;; float32 _offset
    4
    ;; string _custom_message
    4 (length _custom_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; trajectory_msgs/JointTrajectoryPoint _joint
       (send _joint :serialize s)
     ;; float32 _offset
       (sys::poke _offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _custom_message
       (write-long (length _custom_message) s) (princ _custom_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; trajectory_msgs/JointTrajectoryPoint _joint
     (send _joint :deserialize buf ptr-) (incf ptr- (send _joint :serialization-length))
   ;; float32 _offset
     (setq _offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _custom_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _custom_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dg_msgs::CurrentImagePoint
  :super ros::object
  :slots ())

(setf (get dg_msgs::CurrentImagePoint :md5sum-) "c451197fe7fada4a911ce8f0ae35fafe")
(setf (get dg_msgs::CurrentImagePoint :datatype-) "dg_msgs/CurrentImagePoint")
(setf (get dg_msgs::CurrentImagePoint :request) dg_msgs::CurrentImagePointRequest)
(setf (get dg_msgs::CurrentImagePoint :response) dg_msgs::CurrentImagePointResponse)

(defmethod dg_msgs::CurrentImagePointRequest
  (:response () (instance dg_msgs::CurrentImagePointResponse :init)))

(setf (get dg_msgs::CurrentImagePointRequest :md5sum-) "c451197fe7fada4a911ce8f0ae35fafe")
(setf (get dg_msgs::CurrentImagePointRequest :datatype-) "dg_msgs/CurrentImagePointRequest")
(setf (get dg_msgs::CurrentImagePointRequest :definition-)
      "string number       # 设备编码
bool check_position # 是否检查当前位置合理性
---
int32 result        # 拍照点获取结果，0：成功；非0：失败（1：拍照点不合理）
geometry_msgs/PoseStamped pose
trajectory_msgs/JointTrajectoryPoint joint
float32 offset      # 升降柱伸缩量
string custom_message


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
")

(setf (get dg_msgs::CurrentImagePointResponse :md5sum-) "c451197fe7fada4a911ce8f0ae35fafe")
(setf (get dg_msgs::CurrentImagePointResponse :datatype-) "dg_msgs/CurrentImagePointResponse")
(setf (get dg_msgs::CurrentImagePointResponse :definition-)
      "string number       # 设备编码
bool check_position # 是否检查当前位置合理性
---
int32 result        # 拍照点获取结果，0：成功；非0：失败（1：拍照点不合理）
geometry_msgs/PoseStamped pose
trajectory_msgs/JointTrajectoryPoint joint
float32 offset      # 升降柱伸缩量
string custom_message


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
")



(provide :dg_msgs/CurrentImagePoint "c451197fe7fada4a911ce8f0ae35fafe")


