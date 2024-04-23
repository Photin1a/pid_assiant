;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::WorkshopMap)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'WorkshopMap (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::WORKSHOPMAP")
  (make-package "DG_MSGS::WORKSHOPMAP"))
(unless (find-package "DG_MSGS::WORKSHOPMAPREQUEST")
  (make-package "DG_MSGS::WORKSHOPMAPREQUEST"))
(unless (find-package "DG_MSGS::WORKSHOPMAPRESPONSE")
  (make-package "DG_MSGS::WORKSHOPMAPRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::WorkshopMapRequest
  :super ros::object
  :slots ())

(defmethod dg_msgs::WorkshopMapRequest
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

(defclass dg_msgs::WorkshopMapResponse
  :super ros::object
  :slots (_paths ))

(defmethod dg_msgs::WorkshopMapResponse
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

(defclass dg_msgs::WorkshopMap
  :super ros::object
  :slots ())

(setf (get dg_msgs::WorkshopMap :md5sum-) "6492c325ba20fade9dfa2542bc679f51")
(setf (get dg_msgs::WorkshopMap :datatype-) "dg_msgs/WorkshopMap")
(setf (get dg_msgs::WorkshopMap :request) dg_msgs::WorkshopMapRequest)
(setf (get dg_msgs::WorkshopMap :response) dg_msgs::WorkshopMapResponse)

(defmethod dg_msgs::WorkshopMapRequest
  (:response () (instance dg_msgs::WorkshopMapResponse :init)))

(setf (get dg_msgs::WorkshopMapRequest :md5sum-) "6492c325ba20fade9dfa2542bc679f51")
(setf (get dg_msgs::WorkshopMapRequest :datatype-) "dg_msgs/WorkshopMapRequest")
(setf (get dg_msgs::WorkshopMapRequest :definition-)
      "---
string[] paths

")

(setf (get dg_msgs::WorkshopMapResponse :md5sum-) "6492c325ba20fade9dfa2542bc679f51")
(setf (get dg_msgs::WorkshopMapResponse :datatype-) "dg_msgs/WorkshopMapResponse")
(setf (get dg_msgs::WorkshopMapResponse :definition-)
      "---
string[] paths

")



(provide :dg_msgs/WorkshopMap "6492c325ba20fade9dfa2542bc679f51")


