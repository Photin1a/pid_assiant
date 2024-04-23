;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::BollardHoming)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'BollardHoming (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::BOLLARDHOMING")
  (make-package "DG_MSGS::BOLLARDHOMING"))
(unless (find-package "DG_MSGS::BOLLARDHOMINGREQUEST")
  (make-package "DG_MSGS::BOLLARDHOMINGREQUEST"))
(unless (find-package "DG_MSGS::BOLLARDHOMINGRESPONSE")
  (make-package "DG_MSGS::BOLLARDHOMINGRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::BollardHomingRequest
  :super ros::object
  :slots (_number _bollard_name ))

(defmethod dg_msgs::BollardHomingRequest
  (:init
   (&key
    ((:number __number) "")
    ((:bollard_name __bollard_name) "")
    )
   (send-super :init)
   (setq _number (string __number))
   (setq _bollard_name (string __bollard_name))
   self)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:bollard_name
   (&optional __bollard_name)
   (if __bollard_name (setq _bollard_name __bollard_name)) _bollard_name)
  (:serialization-length
   ()
   (+
    ;; string _number
    4 (length _number)
    ;; string _bollard_name
    4 (length _bollard_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _number
       (write-long (length _number) s) (princ _number s)
     ;; string _bollard_name
       (write-long (length _bollard_name) s) (princ _bollard_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _bollard_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _bollard_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dg_msgs::BollardHomingResponse
  :super ros::object
  :slots (_result _err_msg ))

(defmethod dg_msgs::BollardHomingResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:err_msg __err_msg) "")
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _err_msg (string __err_msg))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:err_msg
   (&optional __err_msg)
   (if __err_msg (setq _err_msg __err_msg)) _err_msg)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; string _err_msg
    4 (length _err_msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; string _err_msg
       (write-long (length _err_msg) s) (princ _err_msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _err_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _err_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dg_msgs::BollardHoming
  :super ros::object
  :slots ())

(setf (get dg_msgs::BollardHoming :md5sum-) "6107cba57bb4df69eb49493ac2286ce0")
(setf (get dg_msgs::BollardHoming :datatype-) "dg_msgs/BollardHoming")
(setf (get dg_msgs::BollardHoming :request) dg_msgs::BollardHomingRequest)
(setf (get dg_msgs::BollardHoming :response) dg_msgs::BollardHomingResponse)

(defmethod dg_msgs::BollardHomingRequest
  (:response () (instance dg_msgs::BollardHomingResponse :init)))

(setf (get dg_msgs::BollardHomingRequest :md5sum-) "6107cba57bb4df69eb49493ac2286ce0")
(setf (get dg_msgs::BollardHomingRequest :datatype-) "dg_msgs/BollardHomingRequest")
(setf (get dg_msgs::BollardHomingRequest :definition-)
      "# 升降柱回零 service name: /bollard_homing
string number     # 升降柱编号
string bollard_name     # 升降柱名(当前可以不填)
---
int32 result                # 0: 成功；非0: 失败
string err_msg              # 错误信息
")

(setf (get dg_msgs::BollardHomingResponse :md5sum-) "6107cba57bb4df69eb49493ac2286ce0")
(setf (get dg_msgs::BollardHomingResponse :datatype-) "dg_msgs/BollardHomingResponse")
(setf (get dg_msgs::BollardHomingResponse :definition-)
      "# 升降柱回零 service name: /bollard_homing
string number     # 升降柱编号
string bollard_name     # 升降柱名(当前可以不填)
---
int32 result                # 0: 成功；非0: 失败
string err_msg              # 错误信息
")



(provide :dg_msgs/BollardHoming "6107cba57bb4df69eb49493ac2286ce0")


