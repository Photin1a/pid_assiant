;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::AntiCollisionWheelState)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'AntiCollisionWheelState (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::ANTICOLLISIONWHEELSTATE")
  (make-package "DG_MSGS::ANTICOLLISIONWHEELSTATE"))

(in-package "ROS")
;;//! \htmlinclude AntiCollisionWheelState.msg.html


(defclass dg_msgs::AntiCollisionWheelState
  :super ros::object
  :slots (_wheel_name _is_get_state _position _speed _state_word ))

(defmethod dg_msgs::AntiCollisionWheelState
  (:init
   (&key
    ((:wheel_name __wheel_name) "")
    ((:is_get_state __is_get_state) nil)
    ((:position __position) 0.0)
    ((:speed __speed) 0.0)
    ((:state_word __state_word) 0)
    )
   (send-super :init)
   (setq _wheel_name (string __wheel_name))
   (setq _is_get_state __is_get_state)
   (setq _position (float __position))
   (setq _speed (float __speed))
   (setq _state_word (round __state_word))
   self)
  (:wheel_name
   (&optional __wheel_name)
   (if __wheel_name (setq _wheel_name __wheel_name)) _wheel_name)
  (:is_get_state
   (&optional __is_get_state)
   (if __is_get_state (setq _is_get_state __is_get_state)) _is_get_state)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:state_word
   (&optional __state_word)
   (if __state_word (setq _state_word __state_word)) _state_word)
  (:serialization-length
   ()
   (+
    ;; string _wheel_name
    4 (length _wheel_name)
    ;; bool _is_get_state
    1
    ;; float32 _position
    4
    ;; float32 _speed
    4
    ;; int32 _state_word
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _wheel_name
       (write-long (length _wheel_name) s) (princ _wheel_name s)
     ;; bool _is_get_state
       (if _is_get_state (write-byte -1 s) (write-byte 0 s))
     ;; float32 _position
       (sys::poke _position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _state_word
       (write-long _state_word s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _wheel_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _wheel_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _is_get_state
     (setq _is_get_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _position
     (setq _position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _state_word
     (setq _state_word (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dg_msgs::AntiCollisionWheelState :md5sum-) "a269fe39cc5307abc0b5ce3d3619c54a")
(setf (get dg_msgs::AntiCollisionWheelState :datatype-) "dg_msgs/AntiCollisionWheelState")
(setf (get dg_msgs::AntiCollisionWheelState :definition-)
      "# 防撞轮状态 - 设置和获取通用
string wheel_name           # 防撞轮名
bool is_get_state           # 当前请求是否是获得状态，如果为true为请求状态，false则为设置状态
float32 position            # 位置
float32 speed               # 速度
int32 state_word            # 状态字
")



(provide :dg_msgs/AntiCollisionWheelState "a269fe39cc5307abc0b5ce3d3619c54a")


