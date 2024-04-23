;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::BollardState)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'BollardState (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::BOLLARDSTATE")
  (make-package "DG_MSGS::BOLLARDSTATE"))

(in-package "ROS")
;;//! \htmlinclude BollardState.msg.html


(defclass dg_msgs::BollardState
  :super ros::object
  :slots (_number _bollard_name _absolute_height _speed _is_aviable _is_moving ))

(defmethod dg_msgs::BollardState
  (:init
   (&key
    ((:number __number) "")
    ((:bollard_name __bollard_name) "")
    ((:absolute_height __absolute_height) 0.0)
    ((:speed __speed) 0.0)
    ((:is_aviable __is_aviable) nil)
    ((:is_moving __is_moving) nil)
    )
   (send-super :init)
   (setq _number (string __number))
   (setq _bollard_name (string __bollard_name))
   (setq _absolute_height (float __absolute_height))
   (setq _speed (float __speed))
   (setq _is_aviable __is_aviable)
   (setq _is_moving __is_moving)
   self)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:bollard_name
   (&optional __bollard_name)
   (if __bollard_name (setq _bollard_name __bollard_name)) _bollard_name)
  (:absolute_height
   (&optional __absolute_height)
   (if __absolute_height (setq _absolute_height __absolute_height)) _absolute_height)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:is_aviable
   (&optional __is_aviable)
   (if __is_aviable (setq _is_aviable __is_aviable)) _is_aviable)
  (:is_moving
   (&optional __is_moving)
   (if __is_moving (setq _is_moving __is_moving)) _is_moving)
  (:serialization-length
   ()
   (+
    ;; string _number
    4 (length _number)
    ;; string _bollard_name
    4 (length _bollard_name)
    ;; float32 _absolute_height
    4
    ;; float32 _speed
    4
    ;; bool _is_aviable
    1
    ;; bool _is_moving
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _number
       (write-long (length _number) s) (princ _number s)
     ;; string _bollard_name
       (write-long (length _bollard_name) s) (princ _bollard_name s)
     ;; float32 _absolute_height
       (sys::poke _absolute_height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _is_aviable
       (if _is_aviable (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_moving
       (if _is_moving (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _bollard_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _bollard_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _absolute_height
     (setq _absolute_height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _is_aviable
     (setq _is_aviable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_moving
     (setq _is_moving (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dg_msgs::BollardState :md5sum-) "97182af4acca076bb0c4ed889ad3c8a0")
(setf (get dg_msgs::BollardState :datatype-) "dg_msgs/BollardState")
(setf (get dg_msgs::BollardState :definition-)
      "# 升降柱状态信息
string number               # 设备组编号
string bollard_name         # 升降柱名
float32 absolute_height     # 升降柱绝对高度
float32 speed               # 升降柱速度
bool is_aviable             # 当前是否可用；急停被按下、当前处于自动、modbus指针没有成功建立
bool is_moving              # 当前是否正在运动
")



(provide :dg_msgs/BollardState "97182af4acca076bb0c4ed889ad3c8a0")


