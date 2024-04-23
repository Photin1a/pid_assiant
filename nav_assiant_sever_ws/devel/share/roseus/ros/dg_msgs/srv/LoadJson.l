;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::LoadJson)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'LoadJson (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::LOADJSON")
  (make-package "DG_MSGS::LOADJSON"))
(unless (find-package "DG_MSGS::LOADJSONREQUEST")
  (make-package "DG_MSGS::LOADJSONREQUEST"))
(unless (find-package "DG_MSGS::LOADJSONRESPONSE")
  (make-package "DG_MSGS::LOADJSONRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::LoadJsonRequest
  :super ros::object
  :slots (_file_path ))

(defmethod dg_msgs::LoadJsonRequest
  (:init
   (&key
    ((:file_path __file_path) "")
    )
   (send-super :init)
   (setq _file_path (string __file_path))
   self)
  (:file_path
   (&optional __file_path)
   (if __file_path (setq _file_path __file_path)) _file_path)
  (:serialization-length
   ()
   (+
    ;; string _file_path
    4 (length _file_path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _file_path
       (write-long (length _file_path) s) (princ _file_path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _file_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dg_msgs::LoadJsonResponse
  :super ros::object
  :slots (_ret ))

(defmethod dg_msgs::LoadJsonResponse
  (:init
   (&key
    ((:ret __ret) nil)
    )
   (send-super :init)
   (setq _ret __ret)
   self)
  (:ret
   (&optional __ret)
   (if __ret (setq _ret __ret)) _ret)
  (:serialization-length
   ()
   (+
    ;; bool _ret
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ret
       (if _ret (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ret
     (setq _ret (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dg_msgs::LoadJson
  :super ros::object
  :slots ())

(setf (get dg_msgs::LoadJson :md5sum-) "884e9f1f2a64f8cbc72d72730cb5a68c")
(setf (get dg_msgs::LoadJson :datatype-) "dg_msgs/LoadJson")
(setf (get dg_msgs::LoadJson :request) dg_msgs::LoadJsonRequest)
(setf (get dg_msgs::LoadJson :response) dg_msgs::LoadJsonResponse)

(defmethod dg_msgs::LoadJsonRequest
  (:response () (instance dg_msgs::LoadJsonResponse :init)))

(setf (get dg_msgs::LoadJsonRequest :md5sum-) "884e9f1f2a64f8cbc72d72730cb5a68c")
(setf (get dg_msgs::LoadJsonRequest :datatype-) "dg_msgs/LoadJsonRequest")
(setf (get dg_msgs::LoadJsonRequest :definition-)
      "string file_path
---
bool ret
")

(setf (get dg_msgs::LoadJsonResponse :md5sum-) "884e9f1f2a64f8cbc72d72730cb5a68c")
(setf (get dg_msgs::LoadJsonResponse :datatype-) "dg_msgs/LoadJsonResponse")
(setf (get dg_msgs::LoadJsonResponse :definition-)
      "string file_path
---
bool ret
")



(provide :dg_msgs/LoadJson "884e9f1f2a64f8cbc72d72730cb5a68c")


