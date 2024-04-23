;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::XGMoveTask)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'XGMoveTask (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::XGMOVETASK")
  (make-package "DG_MSGS::XGMOVETASK"))
(unless (find-package "DG_MSGS::XGMOVETASKREQUEST")
  (make-package "DG_MSGS::XGMOVETASKREQUEST"))
(unless (find-package "DG_MSGS::XGMOVETASKRESPONSE")
  (make-package "DG_MSGS::XGMOVETASKRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass dg_msgs::XGMoveTaskRequest
  :super ros::object
  :slots (_station_name _target_pose _max_deviation _method _backing_to_home ))

(defmethod dg_msgs::XGMoveTaskRequest
  (:init
   (&key
    ((:station_name __station_name) "")
    ((:target_pose __target_pose) (instance geometry_msgs::PoseStamped :init))
    ((:max_deviation __max_deviation) 0.0)
    ((:method __method) "")
    ((:backing_to_home __backing_to_home) nil)
    )
   (send-super :init)
   (setq _station_name (string __station_name))
   (setq _target_pose __target_pose)
   (setq _max_deviation (float __max_deviation))
   (setq _method (string __method))
   (setq _backing_to_home __backing_to_home)
   self)
  (:station_name
   (&optional __station_name)
   (if __station_name (setq _station_name __station_name)) _station_name)
  (:target_pose
   (&rest __target_pose)
   (if (keywordp (car __target_pose))
       (send* _target_pose __target_pose)
     (progn
       (if __target_pose (setq _target_pose (car __target_pose)))
       _target_pose)))
  (:max_deviation
   (&optional __max_deviation)
   (if __max_deviation (setq _max_deviation __max_deviation)) _max_deviation)
  (:method
   (&optional __method)
   (if __method (setq _method __method)) _method)
  (:backing_to_home
   (&optional __backing_to_home)
   (if __backing_to_home (setq _backing_to_home __backing_to_home)) _backing_to_home)
  (:serialization-length
   ()
   (+
    ;; string _station_name
    4 (length _station_name)
    ;; geometry_msgs/PoseStamped _target_pose
    (send _target_pose :serialization-length)
    ;; float32 _max_deviation
    4
    ;; string _method
    4 (length _method)
    ;; bool _backing_to_home
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _station_name
       (write-long (length _station_name) s) (princ _station_name s)
     ;; geometry_msgs/PoseStamped _target_pose
       (send _target_pose :serialize s)
     ;; float32 _max_deviation
       (sys::poke _max_deviation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _method
       (write-long (length _method) s) (princ _method s)
     ;; bool _backing_to_home
       (if _backing_to_home (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _station_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _station_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseStamped _target_pose
     (send _target_pose :deserialize buf ptr-) (incf ptr- (send _target_pose :serialization-length))
   ;; float32 _max_deviation
     (setq _max_deviation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _method
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _method (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _backing_to_home
     (setq _backing_to_home (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dg_msgs::XGMoveTaskResponse
  :super ros::object
  :slots (_state_info ))

(defmethod dg_msgs::XGMoveTaskResponse
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

(defclass dg_msgs::XGMoveTask
  :super ros::object
  :slots ())

(setf (get dg_msgs::XGMoveTask :md5sum-) "9663c9eb04f4ae4d5ab6a6596938f0d3")
(setf (get dg_msgs::XGMoveTask :datatype-) "dg_msgs/XGMoveTask")
(setf (get dg_msgs::XGMoveTask :request) dg_msgs::XGMoveTaskRequest)
(setf (get dg_msgs::XGMoveTask :response) dg_msgs::XGMoveTaskResponse)

(defmethod dg_msgs::XGMoveTaskRequest
  (:response () (instance dg_msgs::XGMoveTaskResponse :init)))

(setf (get dg_msgs::XGMoveTaskRequest :md5sum-) "9663c9eb04f4ae4d5ab6a6596938f0d3")
(setf (get dg_msgs::XGMoveTaskRequest :datatype-) "dg_msgs/XGMoveTaskRequest")
(setf (get dg_msgs::XGMoveTaskRequest :definition-)
      "# 为仙工底盘提供的专用move_task服务

# string line_name                          # 任务线名，可缺省 -- 未来可能弃用
string station_name                         # 站点名，可缺省
geometry_msgs/PoseStamped target_pose       # 目标pose
float32 max_deviation                       # 最大偏移误差
string method                               # 运动方式，forward, backward
bool backing_to_home                        # 返回到地图初始点

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
---
UniversalStateInfo  state_info

================================================================================
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")

(setf (get dg_msgs::XGMoveTaskResponse :md5sum-) "9663c9eb04f4ae4d5ab6a6596938f0d3")
(setf (get dg_msgs::XGMoveTaskResponse :datatype-) "dg_msgs/XGMoveTaskResponse")
(setf (get dg_msgs::XGMoveTaskResponse :definition-)
      "# 为仙工底盘提供的专用move_task服务

# string line_name                          # 任务线名，可缺省 -- 未来可能弃用
string station_name                         # 站点名，可缺省
geometry_msgs/PoseStamped target_pose       # 目标pose
float32 max_deviation                       # 最大偏移误差
string method                               # 运动方式，forward, backward
bool backing_to_home                        # 返回到地图初始点

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
---
UniversalStateInfo  state_info

================================================================================
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")



(provide :dg_msgs/XGMoveTask "9663c9eb04f4ae4d5ab6a6596938f0d3")


