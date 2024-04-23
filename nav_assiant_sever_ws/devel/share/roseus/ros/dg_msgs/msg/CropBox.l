;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::CropBox)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'CropBox (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::CROPBOX")
  (make-package "DG_MSGS::CROPBOX"))

(in-package "ROS")
;;//! \htmlinclude CropBox.msg.html


(defclass dg_msgs::CropBox
  :super ros::object
  :slots (_center_ _R_euler _extent_ ))

(defmethod dg_msgs::CropBox
  (:init
   (&key
    ((:center_ __center_) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:R_euler __R_euler) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:extent_ __extent_) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _center_ __center_)
   (setq _R_euler __R_euler)
   (setq _extent_ __extent_)
   self)
  (:center_
   (&optional __center_)
   (if __center_ (setq _center_ __center_)) _center_)
  (:R_euler
   (&optional __R_euler)
   (if __R_euler (setq _R_euler __R_euler)) _R_euler)
  (:extent_
   (&optional __extent_)
   (if __extent_ (setq _extent_ __extent_)) _extent_)
  (:serialization-length
   ()
   (+
    ;; float32[] _center_
    (* 4    (length _center_)) 4
    ;; float32[] _R_euler
    (* 4    (length _R_euler)) 4
    ;; float32[] _extent_
    (* 4    (length _extent_)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _center_
     (write-long (length _center_) s)
     (dotimes (i (length _center_))
       (sys::poke (elt _center_ i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _R_euler
     (write-long (length _R_euler) s)
     (dotimes (i (length _R_euler))
       (sys::poke (elt _R_euler i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _extent_
     (write-long (length _extent_) s)
     (dotimes (i (length _extent_))
       (sys::poke (elt _extent_ i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _center_
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _center_ (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _center_ i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _R_euler
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _R_euler (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _R_euler i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _extent_
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _extent_ (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _extent_ i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get dg_msgs::CropBox :md5sum-) "42dde1f55fee23ccce2a80f909dd54cf")
(setf (get dg_msgs::CropBox :datatype-) "dg_msgs/CropBox")
(setf (get dg_msgs::CropBox :definition-)
      "float32[] center_
float32[] R_euler
float32[] extent_
")



(provide :dg_msgs/CropBox "42dde1f55fee23ccce2a80f909dd54cf")


