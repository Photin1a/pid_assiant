;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::CurrentPoseAndFrame)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'CurrentPoseAndFrame (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::CURRENTPOSEANDFRAME")
  (make-package "DG_MSGS::CURRENTPOSEANDFRAME"))
(unless (find-package "DG_MSGS::CURRENTPOSEANDFRAMEREQUEST")
  (make-package "DG_MSGS::CURRENTPOSEANDFRAMEREQUEST"))
(unless (find-package "DG_MSGS::CURRENTPOSEANDFRAMERESPONSE")
  (make-package "DG_MSGS::CURRENTPOSEANDFRAMERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass dg_msgs::CurrentPoseAndFrameRequest
  :super ros::object
  :slots (_sensor_type _sensor_id _directory _frame_type ))

(defmethod dg_msgs::CurrentPoseAndFrameRequest
  (:init
   (&key
    ((:sensor_type __sensor_type) "")
    ((:sensor_id __sensor_id) "")
    ((:directory __directory) "")
    ((:frame_type __frame_type) "")
    )
   (send-super :init)
   (setq _sensor_type (string __sensor_type))
   (setq _sensor_id (string __sensor_id))
   (setq _directory (string __directory))
   (setq _frame_type (string __frame_type))
   self)
  (:sensor_type
   (&optional __sensor_type)
   (if __sensor_type (setq _sensor_type __sensor_type)) _sensor_type)
  (:sensor_id
   (&optional __sensor_id)
   (if __sensor_id (setq _sensor_id __sensor_id)) _sensor_id)
  (:directory
   (&optional __directory)
   (if __directory (setq _directory __directory)) _directory)
  (:frame_type
   (&optional __frame_type)
   (if __frame_type (setq _frame_type __frame_type)) _frame_type)
  (:serialization-length
   ()
   (+
    ;; string _sensor_type
    4 (length _sensor_type)
    ;; string _sensor_id
    4 (length _sensor_id)
    ;; string _directory
    4 (length _directory)
    ;; string _frame_type
    4 (length _frame_type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sensor_type
       (write-long (length _sensor_type) s) (princ _sensor_type s)
     ;; string _sensor_id
       (write-long (length _sensor_id) s) (princ _sensor_id s)
     ;; string _directory
       (write-long (length _directory) s) (princ _directory s)
     ;; string _frame_type
       (write-long (length _frame_type) s) (princ _frame_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sensor_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sensor_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _sensor_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sensor_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _directory
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _directory (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _frame_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dg_msgs::CurrentPoseAndFrameResponse
  :super ros::object
  :slots (_result _pose _data_file_path ))

(defmethod dg_msgs::CurrentPoseAndFrameResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:data_file_path __data_file_path) "")
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _pose __pose)
   (setq _data_file_path (string __data_file_path))
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
  (:data_file_path
   (&optional __data_file_path)
   (if __data_file_path (setq _data_file_path __data_file_path)) _data_file_path)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; string _data_file_path
    4 (length _data_file_path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; string _data_file_path
       (write-long (length _data_file_path) s) (princ _data_file_path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; string _data_file_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data_file_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dg_msgs::CurrentPoseAndFrame
  :super ros::object
  :slots ())

(setf (get dg_msgs::CurrentPoseAndFrame :md5sum-) "413286d2ab742cdfc7a2610d488af047")
(setf (get dg_msgs::CurrentPoseAndFrame :datatype-) "dg_msgs/CurrentPoseAndFrame")
(setf (get dg_msgs::CurrentPoseAndFrame :request) dg_msgs::CurrentPoseAndFrameRequest)
(setf (get dg_msgs::CurrentPoseAndFrame :response) dg_msgs::CurrentPoseAndFrameResponse)

(defmethod dg_msgs::CurrentPoseAndFrameRequest
  (:response () (instance dg_msgs::CurrentPoseAndFrameResponse :init)))

(setf (get dg_msgs::CurrentPoseAndFrameRequest :md5sum-) "413286d2ab742cdfc7a2610d488af047")
(setf (get dg_msgs::CurrentPoseAndFrameRequest :datatype-) "dg_msgs/CurrentPoseAndFrameRequest")
(setf (get dg_msgs::CurrentPoseAndFrameRequest :definition-)
      "# 采集区域帧/车头帧
string sensor_type         # 雷达（lidar）、精扫相机（camera）
string sensor_id           # 雷达topic  相机分组编号
string directory           # 数据存放目录
string frame_type          # 帧类型：车头配准帧（head）区域配准帧（region）
---
int32 result                       # 0: 成功  非0：失败
geometry_msgs/PoseStamped pose     # 当前机器人全局坐标
string data_file_path              # 采集数据存放路径

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
")

(setf (get dg_msgs::CurrentPoseAndFrameResponse :md5sum-) "413286d2ab742cdfc7a2610d488af047")
(setf (get dg_msgs::CurrentPoseAndFrameResponse :datatype-) "dg_msgs/CurrentPoseAndFrameResponse")
(setf (get dg_msgs::CurrentPoseAndFrameResponse :definition-)
      "# 采集区域帧/车头帧
string sensor_type         # 雷达（lidar）、精扫相机（camera）
string sensor_id           # 雷达topic  相机分组编号
string directory           # 数据存放目录
string frame_type          # 帧类型：车头配准帧（head）区域配准帧（region）
---
int32 result                       # 0: 成功  非0：失败
geometry_msgs/PoseStamped pose     # 当前机器人全局坐标
string data_file_path              # 采集数据存放路径

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
")



(provide :dg_msgs/CurrentPoseAndFrame "413286d2ab742cdfc7a2610d488af047")


