;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::SpeedScale)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'SpeedScale (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::SPEEDSCALE")
  (make-package "DG_MSGS::SPEEDSCALE"))
(unless (find-package "DG_MSGS::SPEEDSCALEREQUEST")
  (make-package "DG_MSGS::SPEEDSCALEREQUEST"))
(unless (find-package "DG_MSGS::SPEEDSCALERESPONSE")
  (make-package "DG_MSGS::SPEEDSCALERESPONSE"))

(in-package "ROS")





(defclass dg_msgs::SpeedScaleRequest
  :super ros::object
  :slots (_linear_scale _angular_scale ))

(defmethod dg_msgs::SpeedScaleRequest
  (:init
   (&key
    ((:linear_scale __linear_scale) 0.0)
    ((:angular_scale __angular_scale) 0.0)
    )
   (send-super :init)
   (setq _linear_scale (float __linear_scale))
   (setq _angular_scale (float __angular_scale))
   self)
  (:linear_scale
   (&optional __linear_scale)
   (if __linear_scale (setq _linear_scale __linear_scale)) _linear_scale)
  (:angular_scale
   (&optional __angular_scale)
   (if __angular_scale (setq _angular_scale __angular_scale)) _angular_scale)
  (:serialization-length
   ()
   (+
    ;; float32 _linear_scale
    4
    ;; float32 _angular_scale
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _linear_scale
       (sys::poke _linear_scale (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angular_scale
       (sys::poke _angular_scale (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _linear_scale
     (setq _linear_scale (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angular_scale
     (setq _angular_scale (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dg_msgs::SpeedScaleResponse
  :super ros::object
  :slots (_cur_linear _cur_angular ))

(defmethod dg_msgs::SpeedScaleResponse
  (:init
   (&key
    ((:cur_linear __cur_linear) 0.0)
    ((:cur_angular __cur_angular) 0.0)
    )
   (send-super :init)
   (setq _cur_linear (float __cur_linear))
   (setq _cur_angular (float __cur_angular))
   self)
  (:cur_linear
   (&optional __cur_linear)
   (if __cur_linear (setq _cur_linear __cur_linear)) _cur_linear)
  (:cur_angular
   (&optional __cur_angular)
   (if __cur_angular (setq _cur_angular __cur_angular)) _cur_angular)
  (:serialization-length
   ()
   (+
    ;; float32 _cur_linear
    4
    ;; float32 _cur_angular
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _cur_linear
       (sys::poke _cur_linear (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cur_angular
       (sys::poke _cur_angular (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _cur_linear
     (setq _cur_linear (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cur_angular
     (setq _cur_angular (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dg_msgs::SpeedScale
  :super ros::object
  :slots ())

(setf (get dg_msgs::SpeedScale :md5sum-) "4030281ced8d9af82eced28afd3f5782")
(setf (get dg_msgs::SpeedScale :datatype-) "dg_msgs/SpeedScale")
(setf (get dg_msgs::SpeedScale :request) dg_msgs::SpeedScaleRequest)
(setf (get dg_msgs::SpeedScale :response) dg_msgs::SpeedScaleResponse)

(defmethod dg_msgs::SpeedScaleRequest
  (:response () (instance dg_msgs::SpeedScaleResponse :init)))

(setf (get dg_msgs::SpeedScaleRequest :md5sum-) "4030281ced8d9af82eced28afd3f5782")
(setf (get dg_msgs::SpeedScaleRequest :datatype-) "dg_msgs/SpeedScaleRequest")
(setf (get dg_msgs::SpeedScaleRequest :definition-)
      "float32 linear_scale
float32 angular_scale
---
float32 cur_linear
float32 cur_angular

")

(setf (get dg_msgs::SpeedScaleResponse :md5sum-) "4030281ced8d9af82eced28afd3f5782")
(setf (get dg_msgs::SpeedScaleResponse :datatype-) "dg_msgs/SpeedScaleResponse")
(setf (get dg_msgs::SpeedScaleResponse :definition-)
      "float32 linear_scale
float32 angular_scale
---
float32 cur_linear
float32 cur_angular

")



(provide :dg_msgs/SpeedScale "4030281ced8d9af82eced28afd3f5782")


