;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::BollardPauseRecvTerm)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'BollardPauseRecvTerm (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::BOLLARDPAUSERECVTERM")
  (make-package "DG_MSGS::BOLLARDPAUSERECVTERM"))
(unless (find-package "DG_MSGS::BOLLARDPAUSERECVTERMREQUEST")
  (make-package "DG_MSGS::BOLLARDPAUSERECVTERMREQUEST"))
(unless (find-package "DG_MSGS::BOLLARDPAUSERECVTERMRESPONSE")
  (make-package "DG_MSGS::BOLLARDPAUSERECVTERMRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::BollardPauseRecvTermRequest
  :super ros::object
  :slots (_operation_ ))

(defmethod dg_msgs::BollardPauseRecvTermRequest
  (:init
   (&key
    ((:operation_ __operation_) "")
    )
   (send-super :init)
   (setq _operation_ (string __operation_))
   self)
  (:operation_
   (&optional __operation_)
   (if __operation_ (setq _operation_ __operation_)) _operation_)
  (:serialization-length
   ()
   (+
    ;; string _operation_
    4 (length _operation_)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _operation_
       (write-long (length _operation_) s) (princ _operation_ s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _operation_
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _operation_ (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dg_msgs::BollardPauseRecvTermResponse
  :super ros::object
  :slots (_current_height ))

(defmethod dg_msgs::BollardPauseRecvTermResponse
  (:init
   (&key
    ((:current_height __current_height) 0.0)
    )
   (send-super :init)
   (setq _current_height (float __current_height))
   self)
  (:current_height
   (&optional __current_height)
   (if __current_height (setq _current_height __current_height)) _current_height)
  (:serialization-length
   ()
   (+
    ;; float32 _current_height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _current_height
       (sys::poke _current_height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _current_height
     (setq _current_height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dg_msgs::BollardPauseRecvTerm
  :super ros::object
  :slots ())

(setf (get dg_msgs::BollardPauseRecvTerm :md5sum-) "79a8946e4b3e453cc2c4ad94be08ff4e")
(setf (get dg_msgs::BollardPauseRecvTerm :datatype-) "dg_msgs/BollardPauseRecvTerm")
(setf (get dg_msgs::BollardPauseRecvTerm :request) dg_msgs::BollardPauseRecvTermRequest)
(setf (get dg_msgs::BollardPauseRecvTerm :response) dg_msgs::BollardPauseRecvTermResponse)

(defmethod dg_msgs::BollardPauseRecvTermRequest
  (:response () (instance dg_msgs::BollardPauseRecvTermResponse :init)))

(setf (get dg_msgs::BollardPauseRecvTermRequest :md5sum-) "79a8946e4b3e453cc2c4ad94be08ff4e")
(setf (get dg_msgs::BollardPauseRecvTermRequest :datatype-) "dg_msgs/BollardPauseRecvTermRequest")
(setf (get dg_msgs::BollardPauseRecvTermRequest :definition-)
      "# 升降柱暂停/恢复/终止服务
# 一旦调用了这个服务中的暂停，必须给一个对应的恢复才能将控制权给自动模式下
# 但调用了暂停后仍然可以使用手动控制，因为人工权限大于自动权限
string operation_           # pause暂停，recovery恢复，terminate终止，必须是三选一，否则直接拒绝
---
float32 current_height      # 当前高度
")

(setf (get dg_msgs::BollardPauseRecvTermResponse :md5sum-) "79a8946e4b3e453cc2c4ad94be08ff4e")
(setf (get dg_msgs::BollardPauseRecvTermResponse :datatype-) "dg_msgs/BollardPauseRecvTermResponse")
(setf (get dg_msgs::BollardPauseRecvTermResponse :definition-)
      "# 升降柱暂停/恢复/终止服务
# 一旦调用了这个服务中的暂停，必须给一个对应的恢复才能将控制权给自动模式下
# 但调用了暂停后仍然可以使用手动控制，因为人工权限大于自动权限
string operation_           # pause暂停，recovery恢复，terminate终止，必须是三选一，否则直接拒绝
---
float32 current_height      # 当前高度
")



(provide :dg_msgs/BollardPauseRecvTerm "79a8946e4b3e453cc2c4ad94be08ff4e")


