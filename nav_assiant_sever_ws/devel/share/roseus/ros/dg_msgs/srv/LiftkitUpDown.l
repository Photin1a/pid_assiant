;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::LiftkitUpDown)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'LiftkitUpDown (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::LIFTKITUPDOWN")
  (make-package "DG_MSGS::LIFTKITUPDOWN"))
(unless (find-package "DG_MSGS::LIFTKITUPDOWNREQUEST")
  (make-package "DG_MSGS::LIFTKITUPDOWNREQUEST"))
(unless (find-package "DG_MSGS::LIFTKITUPDOWNRESPONSE")
  (make-package "DG_MSGS::LIFTKITUPDOWNRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::LiftkitUpDownRequest
  :super ros::object
  :slots (_number _operation ))

(defmethod dg_msgs::LiftkitUpDownRequest
  (:init
   (&key
    ((:number __number) "")
    ((:operation __operation) 0)
    )
   (send-super :init)
   (setq _number (string __number))
   (setq _operation (round __operation))
   self)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:operation
   (&optional __operation)
   (if __operation (setq _operation __operation)) _operation)
  (:serialization-length
   ()
   (+
    ;; string _number
    4 (length _number)
    ;; int32 _operation
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _number
       (write-long (length _number) s) (princ _number s)
     ;; int32 _operation
       (write-long _operation s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _operation
     (setq _operation (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dg_msgs::LiftkitUpDownResponse
  :super ros::object
  :slots (_result _height ))

(defmethod dg_msgs::LiftkitUpDownResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:height __height) 0.0)
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _height (float __height))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; float32 _height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dg_msgs::LiftkitUpDown
  :super ros::object
  :slots ())

(setf (get dg_msgs::LiftkitUpDown :md5sum-) "b6726b2e06edf8d1dc8c1c47a838612e")
(setf (get dg_msgs::LiftkitUpDown :datatype-) "dg_msgs/LiftkitUpDown")
(setf (get dg_msgs::LiftkitUpDown :request) dg_msgs::LiftkitUpDownRequest)
(setf (get dg_msgs::LiftkitUpDown :response) dg_msgs::LiftkitUpDownResponse)

(defmethod dg_msgs::LiftkitUpDownRequest
  (:response () (instance dg_msgs::LiftkitUpDownResponse :init)))

(setf (get dg_msgs::LiftkitUpDownRequest :md5sum-) "b6726b2e06edf8d1dc8c1c47a838612e")
(setf (get dg_msgs::LiftkitUpDownRequest :datatype-) "dg_msgs/LiftkitUpDownRequest")
(setf (get dg_msgs::LiftkitUpDownRequest :definition-)
      "string number       # 设备编码
int32 operation     # 1：上升； 2：下降； 3：停止
---
int32 result
float32 height          # 升降柱当前的高度

")

(setf (get dg_msgs::LiftkitUpDownResponse :md5sum-) "b6726b2e06edf8d1dc8c1c47a838612e")
(setf (get dg_msgs::LiftkitUpDownResponse :datatype-) "dg_msgs/LiftkitUpDownResponse")
(setf (get dg_msgs::LiftkitUpDownResponse :definition-)
      "string number       # 设备编码
int32 operation     # 1：上升； 2：下降； 3：停止
---
int32 result
float32 height          # 升降柱当前的高度

")



(provide :dg_msgs/LiftkitUpDown "b6726b2e06edf8d1dc8c1c47a838612e")


