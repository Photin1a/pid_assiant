;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::ChannelAligning)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'ChannelAligning (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::CHANNELALIGNING")
  (make-package "DG_MSGS::CHANNELALIGNING"))
(unless (find-package "DG_MSGS::CHANNELALIGNINGREQUEST")
  (make-package "DG_MSGS::CHANNELALIGNINGREQUEST"))
(unless (find-package "DG_MSGS::CHANNELALIGNINGRESPONSE")
  (make-package "DG_MSGS::CHANNELALIGNINGRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::ChannelAligningRequest
  :super ros::object
  :slots (_model_path _lidar_topic ))

(defmethod dg_msgs::ChannelAligningRequest
  (:init
   (&key
    ((:model_path __model_path) "")
    ((:lidar_topic __lidar_topic) "")
    )
   (send-super :init)
   (setq _model_path (string __model_path))
   (setq _lidar_topic (string __lidar_topic))
   self)
  (:model_path
   (&optional __model_path)
   (if __model_path (setq _model_path __model_path)) _model_path)
  (:lidar_topic
   (&optional __lidar_topic)
   (if __lidar_topic (setq _lidar_topic __lidar_topic)) _lidar_topic)
  (:serialization-length
   ()
   (+
    ;; string _model_path
    4 (length _model_path)
    ;; string _lidar_topic
    4 (length _lidar_topic)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _model_path
       (write-long (length _model_path) s) (princ _model_path s)
     ;; string _lidar_topic
       (write-long (length _lidar_topic) s) (princ _lidar_topic s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _model_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _lidar_topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lidar_topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dg_msgs::ChannelAligningResponse
  :super ros::object
  :slots (_result ))

(defmethod dg_msgs::ChannelAligningResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dg_msgs::ChannelAligning
  :super ros::object
  :slots ())

(setf (get dg_msgs::ChannelAligning :md5sum-) "7a688dfc87e588c1b04a6359014918f4")
(setf (get dg_msgs::ChannelAligning :datatype-) "dg_msgs/ChannelAligning")
(setf (get dg_msgs::ChannelAligning :request) dg_msgs::ChannelAligningRequest)
(setf (get dg_msgs::ChannelAligning :response) dg_msgs::ChannelAligningResponse)

(defmethod dg_msgs::ChannelAligningRequest
  (:response () (instance dg_msgs::ChannelAligningResponse :init)))

(setf (get dg_msgs::ChannelAligningRequest :md5sum-) "7a688dfc87e588c1b04a6359014918f4")
(setf (get dg_msgs::ChannelAligningRequest :datatype-) "dg_msgs/ChannelAligningRequest")
(setf (get dg_msgs::ChannelAligningRequest :definition-)
      "string model_path
string lidar_topic
---
int32 result        # 0: 成功  非0：失败

")

(setf (get dg_msgs::ChannelAligningResponse :md5sum-) "7a688dfc87e588c1b04a6359014918f4")
(setf (get dg_msgs::ChannelAligningResponse :datatype-) "dg_msgs/ChannelAligningResponse")
(setf (get dg_msgs::ChannelAligningResponse :definition-)
      "string model_path
string lidar_topic
---
int32 result        # 0: 成功  非0：失败

")



(provide :dg_msgs/ChannelAligning "7a688dfc87e588c1b04a6359014918f4")


