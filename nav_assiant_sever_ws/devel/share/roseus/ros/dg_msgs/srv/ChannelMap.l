;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::ChannelMap)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'ChannelMap (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::CHANNELMAP")
  (make-package "DG_MSGS::CHANNELMAP"))
(unless (find-package "DG_MSGS::CHANNELMAPREQUEST")
  (make-package "DG_MSGS::CHANNELMAPREQUEST"))
(unless (find-package "DG_MSGS::CHANNELMAPRESPONSE")
  (make-package "DG_MSGS::CHANNELMAPRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::ChannelMapRequest
  :super ros::object
  :slots ())

(defmethod dg_msgs::ChannelMapRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass dg_msgs::ChannelMapResponse
  :super ros::object
  :slots (_paths ))

(defmethod dg_msgs::ChannelMapResponse
  (:init
   (&key
    ((:paths __paths) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _paths __paths)
   self)
  (:paths
   (&optional __paths)
   (if __paths (setq _paths __paths)) _paths)
  (:serialization-length
   ()
   (+
    ;; string[] _paths
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _paths)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _paths
     (write-long (length _paths) s)
     (dolist (elem _paths)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _paths
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _paths (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _paths i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass dg_msgs::ChannelMap
  :super ros::object
  :slots ())

(setf (get dg_msgs::ChannelMap :md5sum-) "6492c325ba20fade9dfa2542bc679f51")
(setf (get dg_msgs::ChannelMap :datatype-) "dg_msgs/ChannelMap")
(setf (get dg_msgs::ChannelMap :request) dg_msgs::ChannelMapRequest)
(setf (get dg_msgs::ChannelMap :response) dg_msgs::ChannelMapResponse)

(defmethod dg_msgs::ChannelMapRequest
  (:response () (instance dg_msgs::ChannelMapResponse :init)))

(setf (get dg_msgs::ChannelMapRequest :md5sum-) "6492c325ba20fade9dfa2542bc679f51")
(setf (get dg_msgs::ChannelMapRequest :datatype-) "dg_msgs/ChannelMapRequest")
(setf (get dg_msgs::ChannelMapRequest :definition-)
      "---
string[] paths

")

(setf (get dg_msgs::ChannelMapResponse :md5sum-) "6492c325ba20fade9dfa2542bc679f51")
(setf (get dg_msgs::ChannelMapResponse :datatype-) "dg_msgs/ChannelMapResponse")
(setf (get dg_msgs::ChannelMapResponse :definition-)
      "---
string[] paths

")



(provide :dg_msgs/ChannelMap "6492c325ba20fade9dfa2542bc679f51")


