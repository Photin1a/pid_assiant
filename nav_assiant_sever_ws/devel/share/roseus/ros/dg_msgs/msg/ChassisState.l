;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::ChassisState)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'ChassisState (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::CHASSISSTATE")
  (make-package "DG_MSGS::CHASSISSTATE"))

(in-package "ROS")
;;//! \htmlinclude ChassisState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dg_msgs::ChassisState
  :super ros::object
  :slots (_chassis_state_json _chassis_type _chassis_name _battery _current_pose _is_charged _header _state_info ))

(defmethod dg_msgs::ChassisState
  (:init
   (&key
    ((:chassis_state_json __chassis_state_json) "")
    ((:chassis_type __chassis_type) "")
    ((:chassis_name __chassis_name) "")
    ((:battery __battery) 0.0)
    ((:current_pose __current_pose) (instance geometry_msgs::PoseStamped :init))
    ((:is_charged __is_charged) nil)
    ((:header __header) (instance std_msgs::Header :init))
    ((:state_info __state_info) (instance dg_msgs::MonitorState :init))
    )
   (send-super :init)
   (setq _chassis_state_json (string __chassis_state_json))
   (setq _chassis_type (string __chassis_type))
   (setq _chassis_name (string __chassis_name))
   (setq _battery (float __battery))
   (setq _current_pose __current_pose)
   (setq _is_charged __is_charged)
   (setq _header __header)
   (setq _state_info __state_info)
   self)
  (:chassis_state_json
   (&optional __chassis_state_json)
   (if __chassis_state_json (setq _chassis_state_json __chassis_state_json)) _chassis_state_json)
  (:chassis_type
   (&optional __chassis_type)
   (if __chassis_type (setq _chassis_type __chassis_type)) _chassis_type)
  (:chassis_name
   (&optional __chassis_name)
   (if __chassis_name (setq _chassis_name __chassis_name)) _chassis_name)
  (:battery
   (&optional __battery)
   (if __battery (setq _battery __battery)) _battery)
  (:current_pose
   (&rest __current_pose)
   (if (keywordp (car __current_pose))
       (send* _current_pose __current_pose)
     (progn
       (if __current_pose (setq _current_pose (car __current_pose)))
       _current_pose)))
  (:is_charged
   (&optional __is_charged)
   (if __is_charged (setq _is_charged __is_charged)) _is_charged)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
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
    ;; string _chassis_state_json
    4 (length _chassis_state_json)
    ;; string _chassis_type
    4 (length _chassis_type)
    ;; string _chassis_name
    4 (length _chassis_name)
    ;; float32 _battery
    4
    ;; geometry_msgs/PoseStamped _current_pose
    (send _current_pose :serialization-length)
    ;; bool _is_charged
    1
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; dg_msgs/MonitorState _state_info
    (send _state_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _chassis_state_json
       (write-long (length _chassis_state_json) s) (princ _chassis_state_json s)
     ;; string _chassis_type
       (write-long (length _chassis_type) s) (princ _chassis_type s)
     ;; string _chassis_name
       (write-long (length _chassis_name) s) (princ _chassis_name s)
     ;; float32 _battery
       (sys::poke _battery (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/PoseStamped _current_pose
       (send _current_pose :serialize s)
     ;; bool _is_charged
       (if _is_charged (write-byte -1 s) (write-byte 0 s))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; dg_msgs/MonitorState _state_info
       (send _state_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _chassis_state_json
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _chassis_state_json (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _chassis_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _chassis_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _chassis_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _chassis_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _battery
     (setq _battery (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/PoseStamped _current_pose
     (send _current_pose :deserialize buf ptr-) (incf ptr- (send _current_pose :serialization-length))
   ;; bool _is_charged
     (setq _is_charged (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; dg_msgs/MonitorState _state_info
     (send _state_info :deserialize buf ptr-) (incf ptr- (send _state_info :serialization-length))
   ;;
   self)
  )

(setf (get dg_msgs::ChassisState :md5sum-) "75fcdbda3ff2c5f09f982d836b82cd48")
(setf (get dg_msgs::ChassisState :datatype-) "dg_msgs/ChassisState")
(setf (get dg_msgs::ChassisState :definition-)
      "string chassis_state_json                    # 底盘各种参数的json文件
string chassis_type                          # 底盘类型
string chassis_name                          # 底盘名

# [核心参数] - 是上面的子集
float32 battery                              # 电池电量
geometry_msgs/PoseStamped current_pose       # 底盘当前所在位置
bool is_charged                              # 当前是否在充电

Header header                                # 头部信息 - 主要使用的是时间戳
dg_msgs/MonitorState state_info              # 状态信息
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
MSG: dg_msgs/MonitorState
# 监控状态 - 当状态正常时错误码为0
int32 error_code            # 错误码
string additional_msgs       # 附加信息
")



(provide :dg_msgs/ChassisState "75fcdbda3ff2c5f09f982d836b82cd48")


