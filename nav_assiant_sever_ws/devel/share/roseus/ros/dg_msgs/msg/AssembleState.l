;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::AssembleState)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'AssembleState (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::ASSEMBLESTATE")
  (make-package "DG_MSGS::ASSEMBLESTATE"))

(in-package "ROS")
;;//! \htmlinclude AssembleState.msg.html


(defclass dg_msgs::AssembleState
  :super ros::object
  :slots (_is_emergency _is_auto _is_rescue _is_reset ))

(defmethod dg_msgs::AssembleState
  (:init
   (&key
    ((:is_emergency __is_emergency) nil)
    ((:is_auto __is_auto) nil)
    ((:is_rescue __is_rescue) nil)
    ((:is_reset __is_reset) nil)
    )
   (send-super :init)
   (setq _is_emergency __is_emergency)
   (setq _is_auto __is_auto)
   (setq _is_rescue __is_rescue)
   (setq _is_reset __is_reset)
   self)
  (:is_emergency
   (&optional __is_emergency)
   (if __is_emergency (setq _is_emergency __is_emergency)) _is_emergency)
  (:is_auto
   (&optional __is_auto)
   (if __is_auto (setq _is_auto __is_auto)) _is_auto)
  (:is_rescue
   (&optional __is_rescue)
   (if __is_rescue (setq _is_rescue __is_rescue)) _is_rescue)
  (:is_reset
   (&optional __is_reset)
   (if __is_reset (setq _is_reset __is_reset)) _is_reset)
  (:serialization-length
   ()
   (+
    ;; bool _is_emergency
    1
    ;; bool _is_auto
    1
    ;; bool _is_rescue
    1
    ;; bool _is_reset
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_emergency
       (if _is_emergency (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_auto
       (if _is_auto (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_rescue
       (if _is_rescue (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_reset
       (if _is_reset (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_emergency
     (setq _is_emergency (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_auto
     (setq _is_auto (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_rescue
     (setq _is_rescue (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_reset
     (setq _is_reset (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dg_msgs::AssembleState :md5sum-) "38dfb48a7efcd005d49ab62be37595f7")
(setf (get dg_msgs::AssembleState :datatype-) "dg_msgs/AssembleState")
(setf (get dg_msgs::AssembleState :definition-)
      "# 上装箱体状态信息
bool is_emergency           # 是否是急停
bool is_auto                # 是否是自动档
bool is_rescue              # 是否是救援模式
bool is_reset               # 是否是复位
")



(provide :dg_msgs/AssembleState "38dfb48a7efcd005d49ab62be37595f7")


