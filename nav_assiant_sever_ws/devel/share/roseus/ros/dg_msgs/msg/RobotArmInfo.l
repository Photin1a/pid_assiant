;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::RobotArmInfo)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'RobotArmInfo (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::ROBOTARMINFO")
  (make-package "DG_MSGS::ROBOTARMINFO"))

(in-package "ROS")
;;//! \htmlinclude RobotArmInfo.msg.html


(defclass dg_msgs::RobotArmInfo
  :super ros::object
  :slots (_equipment _number _state _enabled _protective_stop _emergency_stop _drag_status _recording _moving_stop _speed_ratio _error_status _error_msgs _payload ))

(defmethod dg_msgs::RobotArmInfo
  (:init
   (&key
    ((:equipment __equipment) (instance dg_msgs::EquipmentCommon :init))
    ((:number __number) "")
    ((:state __state) 0)
    ((:enabled __enabled) nil)
    ((:protective_stop __protective_stop) nil)
    ((:emergency_stop __emergency_stop) nil)
    ((:drag_status __drag_status) nil)
    ((:recording __recording) nil)
    ((:moving_stop __moving_stop) nil)
    ((:speed_ratio __speed_ratio) 0.0)
    ((:error_status __error_status) nil)
    ((:error_msgs __error_msgs) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:payload __payload) "")
    )
   (send-super :init)
   (setq _equipment __equipment)
   (setq _number (string __number))
   (setq _state (round __state))
   (setq _enabled __enabled)
   (setq _protective_stop __protective_stop)
   (setq _emergency_stop __emergency_stop)
   (setq _drag_status __drag_status)
   (setq _recording __recording)
   (setq _moving_stop __moving_stop)
   (setq _speed_ratio (float __speed_ratio))
   (setq _error_status __error_status)
   (setq _error_msgs __error_msgs)
   (setq _payload (string __payload))
   self)
  (:equipment
   (&rest __equipment)
   (if (keywordp (car __equipment))
       (send* _equipment __equipment)
     (progn
       (if __equipment (setq _equipment (car __equipment)))
       _equipment)))
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:enabled
   (&optional __enabled)
   (if __enabled (setq _enabled __enabled)) _enabled)
  (:protective_stop
   (&optional __protective_stop)
   (if __protective_stop (setq _protective_stop __protective_stop)) _protective_stop)
  (:emergency_stop
   (&optional __emergency_stop)
   (if __emergency_stop (setq _emergency_stop __emergency_stop)) _emergency_stop)
  (:drag_status
   (&optional __drag_status)
   (if __drag_status (setq _drag_status __drag_status)) _drag_status)
  (:recording
   (&optional __recording)
   (if __recording (setq _recording __recording)) _recording)
  (:moving_stop
   (&optional __moving_stop)
   (if __moving_stop (setq _moving_stop __moving_stop)) _moving_stop)
  (:speed_ratio
   (&optional __speed_ratio)
   (if __speed_ratio (setq _speed_ratio __speed_ratio)) _speed_ratio)
  (:error_status
   (&optional __error_status)
   (if __error_status (setq _error_status __error_status)) _error_status)
  (:error_msgs
   (&optional __error_msgs)
   (if __error_msgs (setq _error_msgs __error_msgs)) _error_msgs)
  (:payload
   (&optional __payload)
   (if __payload (setq _payload __payload)) _payload)
  (:serialization-length
   ()
   (+
    ;; dg_msgs/EquipmentCommon _equipment
    (send _equipment :serialization-length)
    ;; string _number
    4 (length _number)
    ;; int32 _state
    4
    ;; bool _enabled
    1
    ;; bool _protective_stop
    1
    ;; bool _emergency_stop
    1
    ;; bool _drag_status
    1
    ;; bool _recording
    1
    ;; bool _moving_stop
    1
    ;; float64 _speed_ratio
    8
    ;; bool _error_status
    1
    ;; string[] _error_msgs
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _error_msgs)) 4
    ;; string _payload
    4 (length _payload)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dg_msgs/EquipmentCommon _equipment
       (send _equipment :serialize s)
     ;; string _number
       (write-long (length _number) s) (princ _number s)
     ;; int32 _state
       (write-long _state s)
     ;; bool _enabled
       (if _enabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _protective_stop
       (if _protective_stop (write-byte -1 s) (write-byte 0 s))
     ;; bool _emergency_stop
       (if _emergency_stop (write-byte -1 s) (write-byte 0 s))
     ;; bool _drag_status
       (if _drag_status (write-byte -1 s) (write-byte 0 s))
     ;; bool _recording
       (if _recording (write-byte -1 s) (write-byte 0 s))
     ;; bool _moving_stop
       (if _moving_stop (write-byte -1 s) (write-byte 0 s))
     ;; float64 _speed_ratio
       (sys::poke _speed_ratio (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _error_status
       (if _error_status (write-byte -1 s) (write-byte 0 s))
     ;; string[] _error_msgs
     (write-long (length _error_msgs) s)
     (dolist (elem _error_msgs)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _payload
       (write-long (length _payload) s) (princ _payload s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dg_msgs/EquipmentCommon _equipment
     (send _equipment :deserialize buf ptr-) (incf ptr- (send _equipment :serialization-length))
   ;; string _number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _enabled
     (setq _enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _protective_stop
     (setq _protective_stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _emergency_stop
     (setq _emergency_stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _drag_status
     (setq _drag_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _recording
     (setq _recording (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _moving_stop
     (setq _moving_stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _speed_ratio
     (setq _speed_ratio (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _error_status
     (setq _error_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string[] _error_msgs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _error_msgs (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _error_msgs i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _payload
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _payload (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dg_msgs::RobotArmInfo :md5sum-) "c14cafe5db166d12d88087baffc1cb1c")
(setf (get dg_msgs::RobotArmInfo :datatype-) "dg_msgs/RobotArmInfo")
(setf (get dg_msgs::RobotArmInfo :definition-)
      "EquipmentCommon equipment
string number           # 设备组编号
int32 state
bool enabled            # 机械臂是否使能标志
bool protective_stop    # 机械臂是否检测到碰撞
bool emergency_stop     # 机械臂是否急停
bool drag_status        # 机械臂是否处于拖拽状态
bool recording          # 机械臂是否处于录制状态
bool moving_stop        # 机械臂是否处于运动状态
float64 speed_ratio     # 机械臂当前速度
bool error_status       # 机械臂是否处于报错状态
string[] error_msgs     # 机械臂的错误信息反馈
string payload          # 自定义信息，用于存放不同型号机械臂信息
================================================================================
MSG: dg_msgs/EquipmentCommon
int32 equipment_id
string equipment_name
bool connected
uint64 connected_time
string model
string manufacturer

")



(provide :dg_msgs/RobotArmInfo "c14cafe5db166d12d88087baffc1cb1c")


