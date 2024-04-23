;; Auto-generated. Do not edit!


(when (boundp 'photinia_msgs::PIDParams_srv)
  (if (not (find-package "PHOTINIA_MSGS"))
    (make-package "PHOTINIA_MSGS"))
  (shadow 'PIDParams_srv (find-package "PHOTINIA_MSGS")))
(unless (find-package "PHOTINIA_MSGS::PIDPARAMS_SRV")
  (make-package "PHOTINIA_MSGS::PIDPARAMS_SRV"))
(unless (find-package "PHOTINIA_MSGS::PIDPARAMS_SRVREQUEST")
  (make-package "PHOTINIA_MSGS::PIDPARAMS_SRVREQUEST"))
(unless (find-package "PHOTINIA_MSGS::PIDPARAMS_SRVRESPONSE")
  (make-package "PHOTINIA_MSGS::PIDPARAMS_SRVRESPONSE"))

(in-package "ROS")





(defclass photinia_msgs::PIDParams_srvRequest
  :super ros::object
  :slots (_time _test_distance _max_linear _max_w _angle_p _angle_i _angle_d _linear_p _linear_i _linear_d ))

(defmethod photinia_msgs::PIDParams_srvRequest
  (:init
   (&key
    ((:time __time) "")
    ((:test_distance __test_distance) 0.0)
    ((:max_linear __max_linear) 0.0)
    ((:max_w __max_w) 0.0)
    ((:angle_p __angle_p) 0.0)
    ((:angle_i __angle_i) 0.0)
    ((:angle_d __angle_d) 0.0)
    ((:linear_p __linear_p) 0.0)
    ((:linear_i __linear_i) 0.0)
    ((:linear_d __linear_d) 0.0)
    )
   (send-super :init)
   (setq _time (string __time))
   (setq _test_distance (float __test_distance))
   (setq _max_linear (float __max_linear))
   (setq _max_w (float __max_w))
   (setq _angle_p (float __angle_p))
   (setq _angle_i (float __angle_i))
   (setq _angle_d (float __angle_d))
   (setq _linear_p (float __linear_p))
   (setq _linear_i (float __linear_i))
   (setq _linear_d (float __linear_d))
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:test_distance
   (&optional __test_distance)
   (if __test_distance (setq _test_distance __test_distance)) _test_distance)
  (:max_linear
   (&optional __max_linear)
   (if __max_linear (setq _max_linear __max_linear)) _max_linear)
  (:max_w
   (&optional __max_w)
   (if __max_w (setq _max_w __max_w)) _max_w)
  (:angle_p
   (&optional __angle_p)
   (if __angle_p (setq _angle_p __angle_p)) _angle_p)
  (:angle_i
   (&optional __angle_i)
   (if __angle_i (setq _angle_i __angle_i)) _angle_i)
  (:angle_d
   (&optional __angle_d)
   (if __angle_d (setq _angle_d __angle_d)) _angle_d)
  (:linear_p
   (&optional __linear_p)
   (if __linear_p (setq _linear_p __linear_p)) _linear_p)
  (:linear_i
   (&optional __linear_i)
   (if __linear_i (setq _linear_i __linear_i)) _linear_i)
  (:linear_d
   (&optional __linear_d)
   (if __linear_d (setq _linear_d __linear_d)) _linear_d)
  (:serialization-length
   ()
   (+
    ;; string _time
    4 (length _time)
    ;; float64 _test_distance
    8
    ;; float64 _max_linear
    8
    ;; float64 _max_w
    8
    ;; float64 _angle_p
    8
    ;; float64 _angle_i
    8
    ;; float64 _angle_d
    8
    ;; float64 _linear_p
    8
    ;; float64 _linear_i
    8
    ;; float64 _linear_d
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _time
       (write-long (length _time) s) (princ _time s)
     ;; float64 _test_distance
       (sys::poke _test_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_linear
       (sys::poke _max_linear (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_w
       (sys::poke _max_w (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angle_p
       (sys::poke _angle_p (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angle_i
       (sys::poke _angle_i (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angle_d
       (sys::poke _angle_d (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _linear_p
       (sys::poke _linear_p (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _linear_i
       (sys::poke _linear_i (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _linear_d
       (sys::poke _linear_d (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _test_distance
     (setq _test_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_linear
     (setq _max_linear (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_w
     (setq _max_w (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angle_p
     (setq _angle_p (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angle_i
     (setq _angle_i (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angle_d
     (setq _angle_d (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _linear_p
     (setq _linear_p (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _linear_i
     (setq _linear_i (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _linear_d
     (setq _linear_d (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass photinia_msgs::PIDParams_srvResponse
  :super ros::object
  :slots (_is_success _detail ))

(defmethod photinia_msgs::PIDParams_srvResponse
  (:init
   (&key
    ((:is_success __is_success) nil)
    ((:detail __detail) "")
    )
   (send-super :init)
   (setq _is_success __is_success)
   (setq _detail (string __detail))
   self)
  (:is_success
   (&optional __is_success)
   (if __is_success (setq _is_success __is_success)) _is_success)
  (:detail
   (&optional __detail)
   (if __detail (setq _detail __detail)) _detail)
  (:serialization-length
   ()
   (+
    ;; bool _is_success
    1
    ;; string _detail
    4 (length _detail)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_success
       (if _is_success (write-byte -1 s) (write-byte 0 s))
     ;; string _detail
       (write-long (length _detail) s) (princ _detail s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_success
     (setq _is_success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _detail
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _detail (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass photinia_msgs::PIDParams_srv
  :super ros::object
  :slots ())

(setf (get photinia_msgs::PIDParams_srv :md5sum-) "5ad8bacb8dea16aa1298169b29166847")
(setf (get photinia_msgs::PIDParams_srv :datatype-) "photinia_msgs/PIDParams_srv")
(setf (get photinia_msgs::PIDParams_srv :request) photinia_msgs::PIDParams_srvRequest)
(setf (get photinia_msgs::PIDParams_srv :response) photinia_msgs::PIDParams_srvResponse)

(defmethod photinia_msgs::PIDParams_srvRequest
  (:response () (instance photinia_msgs::PIDParams_srvResponse :init)))

(setf (get photinia_msgs::PIDParams_srvRequest :md5sum-) "5ad8bacb8dea16aa1298169b29166847")
(setf (get photinia_msgs::PIDParams_srvRequest :datatype-) "photinia_msgs/PIDParams_srvRequest")
(setf (get photinia_msgs::PIDParams_srvRequest :definition-)
      "string time
float64 test_distance
float64 max_linear
float64 max_w
float64 angle_p
float64 angle_i
float64 angle_d
float64 linear_p
float64 linear_i
float64 linear_d
---
bool is_success  #pid设置成功：true    失败：false
string detail


")

(setf (get photinia_msgs::PIDParams_srvResponse :md5sum-) "5ad8bacb8dea16aa1298169b29166847")
(setf (get photinia_msgs::PIDParams_srvResponse :datatype-) "photinia_msgs/PIDParams_srvResponse")
(setf (get photinia_msgs::PIDParams_srvResponse :definition-)
      "string time
float64 test_distance
float64 max_linear
float64 max_w
float64 angle_p
float64 angle_i
float64 angle_d
float64 linear_p
float64 linear_i
float64 linear_d
---
bool is_success  #pid设置成功：true    失败：false
string detail


")



(provide :photinia_msgs/PIDParams_srv "5ad8bacb8dea16aa1298169b29166847")


