;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::XGGoToCharge)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'XGGoToCharge (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::XGGOTOCHARGE")
  (make-package "DG_MSGS::XGGOTOCHARGE"))
(unless (find-package "DG_MSGS::XGGOTOCHARGEREQUEST")
  (make-package "DG_MSGS::XGGOTOCHARGEREQUEST"))
(unless (find-package "DG_MSGS::XGGOTOCHARGERESPONSE")
  (make-package "DG_MSGS::XGGOTOCHARGERESPONSE"))

(in-package "ROS")





(defclass dg_msgs::XGGoToChargeRequest
  :super ros::object
  :slots (_allow_switch_map _charger_station ))

(defmethod dg_msgs::XGGoToChargeRequest
  (:init
   (&key
    ((:allow_switch_map __allow_switch_map) nil)
    ((:charger_station __charger_station) "")
    )
   (send-super :init)
   (setq _allow_switch_map __allow_switch_map)
   (setq _charger_station (string __charger_station))
   self)
  (:allow_switch_map
   (&optional __allow_switch_map)
   (if __allow_switch_map (setq _allow_switch_map __allow_switch_map)) _allow_switch_map)
  (:charger_station
   (&optional __charger_station)
   (if __charger_station (setq _charger_station __charger_station)) _charger_station)
  (:serialization-length
   ()
   (+
    ;; bool _allow_switch_map
    1
    ;; string _charger_station
    4 (length _charger_station)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _allow_switch_map
       (if _allow_switch_map (write-byte -1 s) (write-byte 0 s))
     ;; string _charger_station
       (write-long (length _charger_station) s) (princ _charger_station s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _allow_switch_map
     (setq _allow_switch_map (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _charger_station
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _charger_station (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dg_msgs::XGGoToChargeResponse
  :super ros::object
  :slots (_current_battery _is_charged _state_info ))

(defmethod dg_msgs::XGGoToChargeResponse
  (:init
   (&key
    ((:current_battery __current_battery) 0.0)
    ((:is_charged __is_charged) nil)
    ((:state_info __state_info) (instance dg_msgs::UniversalStateInfo :init))
    )
   (send-super :init)
   (setq _current_battery (float __current_battery))
   (setq _is_charged __is_charged)
   (setq _state_info __state_info)
   self)
  (:current_battery
   (&optional __current_battery)
   (if __current_battery (setq _current_battery __current_battery)) _current_battery)
  (:is_charged
   (&optional __is_charged)
   (if __is_charged (setq _is_charged __is_charged)) _is_charged)
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
    ;; float32 _current_battery
    4
    ;; bool _is_charged
    1
    ;; dg_msgs/UniversalStateInfo _state_info
    (send _state_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _current_battery
       (sys::poke _current_battery (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _is_charged
       (if _is_charged (write-byte -1 s) (write-byte 0 s))
     ;; dg_msgs/UniversalStateInfo _state_info
       (send _state_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _current_battery
     (setq _current_battery (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _is_charged
     (setq _is_charged (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; dg_msgs/UniversalStateInfo _state_info
     (send _state_info :deserialize buf ptr-) (incf ptr- (send _state_info :serialization-length))
   ;;
   self)
  )

(defclass dg_msgs::XGGoToCharge
  :super ros::object
  :slots ())

(setf (get dg_msgs::XGGoToCharge :md5sum-) "17a225b0388e872b5c33b08b315a6550")
(setf (get dg_msgs::XGGoToCharge :datatype-) "dg_msgs/XGGoToCharge")
(setf (get dg_msgs::XGGoToCharge :request) dg_msgs::XGGoToChargeRequest)
(setf (get dg_msgs::XGGoToCharge :response) dg_msgs::XGGoToChargeResponse)

(defmethod dg_msgs::XGGoToChargeRequest
  (:response () (instance dg_msgs::XGGoToChargeResponse :init)))

(setf (get dg_msgs::XGGoToChargeRequest :md5sum-) "17a225b0388e872b5c33b08b315a6550")
(setf (get dg_msgs::XGGoToChargeRequest :datatype-) "dg_msgs/XGGoToChargeRequest")
(setf (get dg_msgs::XGGoToChargeRequest :definition-)
      "# 关键变量说明:
# allow_switch_map: 是否允许切换地图，当车在坑道内的时候，底盘会对电梯进行调度

bool allow_switch_map       # 【实验变量，暂未使用】是否允许自动切换地图并执行回充【严禁缺省】
string charger_station      # 充电站站点名，如果缺省则会根据task_config的配置信息自动寻找最近的充电站
---
float32 current_battery     
bool is_charged
UniversalStateInfo  state_info

================================================================================
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")

(setf (get dg_msgs::XGGoToChargeResponse :md5sum-) "17a225b0388e872b5c33b08b315a6550")
(setf (get dg_msgs::XGGoToChargeResponse :datatype-) "dg_msgs/XGGoToChargeResponse")
(setf (get dg_msgs::XGGoToChargeResponse :definition-)
      "# 关键变量说明:
# allow_switch_map: 是否允许切换地图，当车在坑道内的时候，底盘会对电梯进行调度

bool allow_switch_map       # 【实验变量，暂未使用】是否允许自动切换地图并执行回充【严禁缺省】
string charger_station      # 充电站站点名，如果缺省则会根据task_config的配置信息自动寻找最近的充电站
---
float32 current_battery     
bool is_charged
UniversalStateInfo  state_info

================================================================================
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")



(provide :dg_msgs/XGGoToCharge "17a225b0388e872b5c33b08b315a6550")


