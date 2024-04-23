;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::GetSetAntiCollisionWheel)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'GetSetAntiCollisionWheel (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::GETSETANTICOLLISIONWHEEL")
  (make-package "DG_MSGS::GETSETANTICOLLISIONWHEEL"))
(unless (find-package "DG_MSGS::GETSETANTICOLLISIONWHEELREQUEST")
  (make-package "DG_MSGS::GETSETANTICOLLISIONWHEELREQUEST"))
(unless (find-package "DG_MSGS::GETSETANTICOLLISIONWHEELRESPONSE")
  (make-package "DG_MSGS::GETSETANTICOLLISIONWHEELRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::GetSetAntiCollisionWheelRequest
  :super ros::object
  :slots (_target_state ))

(defmethod dg_msgs::GetSetAntiCollisionWheelRequest
  (:init
   (&key
    ((:target_state __target_state) (let (r) (dotimes (i 0) (push (instance dg_msgs::AntiCollisionWheelState :init) r)) r))
    )
   (send-super :init)
   (setq _target_state __target_state)
   self)
  (:target_state
   (&rest __target_state)
   (if (keywordp (car __target_state))
       (send* _target_state __target_state)
     (progn
       (if __target_state (setq _target_state (car __target_state)))
       _target_state)))
  (:serialization-length
   ()
   (+
    ;; dg_msgs/AntiCollisionWheelState[] _target_state
    (apply #'+ (send-all _target_state :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dg_msgs/AntiCollisionWheelState[] _target_state
     (write-long (length _target_state) s)
     (dolist (elem _target_state)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dg_msgs/AntiCollisionWheelState[] _target_state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _target_state (let (r) (dotimes (i n) (push (instance dg_msgs::AntiCollisionWheelState :init) r)) r))
     (dolist (elem- _target_state)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass dg_msgs::GetSetAntiCollisionWheelResponse
  :super ros::object
  :slots (_current_state ))

(defmethod dg_msgs::GetSetAntiCollisionWheelResponse
  (:init
   (&key
    ((:current_state __current_state) (let (r) (dotimes (i 0) (push (instance dg_msgs::AntiCollisionWheelState :init) r)) r))
    )
   (send-super :init)
   (setq _current_state __current_state)
   self)
  (:current_state
   (&rest __current_state)
   (if (keywordp (car __current_state))
       (send* _current_state __current_state)
     (progn
       (if __current_state (setq _current_state (car __current_state)))
       _current_state)))
  (:serialization-length
   ()
   (+
    ;; dg_msgs/AntiCollisionWheelState[] _current_state
    (apply #'+ (send-all _current_state :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dg_msgs/AntiCollisionWheelState[] _current_state
     (write-long (length _current_state) s)
     (dolist (elem _current_state)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dg_msgs/AntiCollisionWheelState[] _current_state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _current_state (let (r) (dotimes (i n) (push (instance dg_msgs::AntiCollisionWheelState :init) r)) r))
     (dolist (elem- _current_state)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass dg_msgs::GetSetAntiCollisionWheel
  :super ros::object
  :slots ())

(setf (get dg_msgs::GetSetAntiCollisionWheel :md5sum-) "e205aef48784b5a49ae3295ca6ee4c49")
(setf (get dg_msgs::GetSetAntiCollisionWheel :datatype-) "dg_msgs/GetSetAntiCollisionWheel")
(setf (get dg_msgs::GetSetAntiCollisionWheel :request) dg_msgs::GetSetAntiCollisionWheelRequest)
(setf (get dg_msgs::GetSetAntiCollisionWheel :response) dg_msgs::GetSetAntiCollisionWheelResponse)

(defmethod dg_msgs::GetSetAntiCollisionWheelRequest
  (:response () (instance dg_msgs::GetSetAntiCollisionWheelResponse :init)))

(setf (get dg_msgs::GetSetAntiCollisionWheelRequest :md5sum-) "e205aef48784b5a49ae3295ca6ee4c49")
(setf (get dg_msgs::GetSetAntiCollisionWheelRequest :datatype-) "dg_msgs/GetSetAntiCollisionWheelRequest")
(setf (get dg_msgs::GetSetAntiCollisionWheelRequest :definition-)
      "# 获取/设置防撞轮状态 - 允许同时设置/获取多个防撞轮状态
AntiCollisionWheelState[] target_state

================================================================================
MSG: dg_msgs/AntiCollisionWheelState
# 防撞轮状态 - 设置和获取通用
string wheel_name           # 防撞轮名
bool is_get_state           # 当前请求是否是获得状态，如果为true为请求状态，false则为设置状态
float32 position            # 位置
float32 speed               # 速度
---
AntiCollisionWheelState[] current_state

================================================================================
MSG: dg_msgs/AntiCollisionWheelState
# 防撞轮状态 - 设置和获取通用
string wheel_name           # 防撞轮名
bool is_get_state           # 当前请求是否是获得状态，如果为true为请求状态，false则为设置状态
float32 position            # 位置
float32 speed               # 速度
")

(setf (get dg_msgs::GetSetAntiCollisionWheelResponse :md5sum-) "e205aef48784b5a49ae3295ca6ee4c49")
(setf (get dg_msgs::GetSetAntiCollisionWheelResponse :datatype-) "dg_msgs/GetSetAntiCollisionWheelResponse")
(setf (get dg_msgs::GetSetAntiCollisionWheelResponse :definition-)
      "# 获取/设置防撞轮状态 - 允许同时设置/获取多个防撞轮状态
AntiCollisionWheelState[] target_state

================================================================================
MSG: dg_msgs/AntiCollisionWheelState
# 防撞轮状态 - 设置和获取通用
string wheel_name           # 防撞轮名
bool is_get_state           # 当前请求是否是获得状态，如果为true为请求状态，false则为设置状态
float32 position            # 位置
float32 speed               # 速度
---
AntiCollisionWheelState[] current_state

================================================================================
MSG: dg_msgs/AntiCollisionWheelState
# 防撞轮状态 - 设置和获取通用
string wheel_name           # 防撞轮名
bool is_get_state           # 当前请求是否是获得状态，如果为true为请求状态，false则为设置状态
float32 position            # 位置
float32 speed               # 速度
")



(provide :dg_msgs/GetSetAntiCollisionWheel "e205aef48784b5a49ae3295ca6ee4c49")


