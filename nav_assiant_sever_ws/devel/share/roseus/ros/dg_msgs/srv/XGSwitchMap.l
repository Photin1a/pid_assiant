;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::XGSwitchMap)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'XGSwitchMap (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::XGSWITCHMAP")
  (make-package "DG_MSGS::XGSWITCHMAP"))
(unless (find-package "DG_MSGS::XGSWITCHMAPREQUEST")
  (make-package "DG_MSGS::XGSWITCHMAPREQUEST"))
(unless (find-package "DG_MSGS::XGSWITCHMAPRESPONSE")
  (make-package "DG_MSGS::XGSWITCHMAPRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::XGSwitchMapRequest
  :super ros::object
  :slots (_map_name _allow_move ))

(defmethod dg_msgs::XGSwitchMapRequest
  (:init
   (&key
    ((:map_name __map_name) "")
    ((:allow_move __allow_move) nil)
    )
   (send-super :init)
   (setq _map_name (string __map_name))
   (setq _allow_move __allow_move)
   self)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:allow_move
   (&optional __allow_move)
   (if __allow_move (setq _allow_move __allow_move)) _allow_move)
  (:serialization-length
   ()
   (+
    ;; string _map_name
    4 (length _map_name)
    ;; bool _allow_move
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;; bool _allow_move
       (if _allow_move (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _allow_move
     (setq _allow_move (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dg_msgs::XGSwitchMapResponse
  :super ros::object
  :slots (_state_info ))

(defmethod dg_msgs::XGSwitchMapResponse
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

(defclass dg_msgs::XGSwitchMap
  :super ros::object
  :slots ())

(setf (get dg_msgs::XGSwitchMap :md5sum-) "65916606f07351a8c2635db69ef80d88")
(setf (get dg_msgs::XGSwitchMap :datatype-) "dg_msgs/XGSwitchMap")
(setf (get dg_msgs::XGSwitchMap :request) dg_msgs::XGSwitchMapRequest)
(setf (get dg_msgs::XGSwitchMap :response) dg_msgs::XGSwitchMapResponse)

(defmethod dg_msgs::XGSwitchMapRequest
  (:response () (instance dg_msgs::XGSwitchMapResponse :init)))

(setf (get dg_msgs::XGSwitchMapRequest :md5sum-) "65916606f07351a8c2635db69ef80d88")
(setf (get dg_msgs::XGSwitchMapRequest :datatype-) "dg_msgs/XGSwitchMapRequest")
(setf (get dg_msgs::XGSwitchMapRequest :definition-)
      "string map_name
bool allow_move                     # 当切换地图的时候是否允许移动到地图切换点【严禁缺省】因为涉及到底盘运动和电梯待命等信息
---
UniversalStateInfo  state_info

================================================================================
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")

(setf (get dg_msgs::XGSwitchMapResponse :md5sum-) "65916606f07351a8c2635db69ef80d88")
(setf (get dg_msgs::XGSwitchMapResponse :datatype-) "dg_msgs/XGSwitchMapResponse")
(setf (get dg_msgs::XGSwitchMapResponse :definition-)
      "string map_name
bool allow_move                     # 当切换地图的时候是否允许移动到地图切换点【严禁缺省】因为涉及到底盘运动和电梯待命等信息
---
UniversalStateInfo  state_info

================================================================================
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")



(provide :dg_msgs/XGSwitchMap "65916606f07351a8c2635db69ef80d88")


