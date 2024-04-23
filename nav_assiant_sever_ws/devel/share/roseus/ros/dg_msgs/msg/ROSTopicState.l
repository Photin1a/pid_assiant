;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::ROSTopicState)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'ROSTopicState (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::ROSTOPICSTATE")
  (make-package "DG_MSGS::ROSTOPICSTATE"))

(in-package "ROS")
;;//! \htmlinclude ROSTopicState.msg.html


(defclass dg_msgs::ROSTopicState
  :super ros::object
  :slots (_topic_name _publish_node _publish_rate _desire_rate _bandwidth _state_info ))

(defmethod dg_msgs::ROSTopicState
  (:init
   (&key
    ((:topic_name __topic_name) "")
    ((:publish_node __publish_node) "")
    ((:publish_rate __publish_rate) 0.0)
    ((:desire_rate __desire_rate) 0.0)
    ((:bandwidth __bandwidth) 0.0)
    ((:state_info __state_info) (instance dg_msgs::MonitorState :init))
    )
   (send-super :init)
   (setq _topic_name (string __topic_name))
   (setq _publish_node (string __publish_node))
   (setq _publish_rate (float __publish_rate))
   (setq _desire_rate (float __desire_rate))
   (setq _bandwidth (float __bandwidth))
   (setq _state_info __state_info)
   self)
  (:topic_name
   (&optional __topic_name)
   (if __topic_name (setq _topic_name __topic_name)) _topic_name)
  (:publish_node
   (&optional __publish_node)
   (if __publish_node (setq _publish_node __publish_node)) _publish_node)
  (:publish_rate
   (&optional __publish_rate)
   (if __publish_rate (setq _publish_rate __publish_rate)) _publish_rate)
  (:desire_rate
   (&optional __desire_rate)
   (if __desire_rate (setq _desire_rate __desire_rate)) _desire_rate)
  (:bandwidth
   (&optional __bandwidth)
   (if __bandwidth (setq _bandwidth __bandwidth)) _bandwidth)
  (:state_info
   (&rest __state_info)
   (if (keywordp (car __state_info))
       (send* _state_info __state_info)
     (progn
       (if __state_info (setq _state_info (car __state_info)))
       _state_info)))
  (:serialization-length
   ()
   (+
    ;; string _topic_name
    4 (length _topic_name)
    ;; string _publish_node
    4 (length _publish_node)
    ;; float32 _publish_rate
    4
    ;; float32 _desire_rate
    4
    ;; float32 _bandwidth
    4
    ;; dg_msgs/MonitorState _state_info
    (send _state_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _topic_name
       (write-long (length _topic_name) s) (princ _topic_name s)
     ;; string _publish_node
       (write-long (length _publish_node) s) (princ _publish_node s)
     ;; float32 _publish_rate
       (sys::poke _publish_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _desire_rate
       (sys::poke _desire_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _bandwidth
       (sys::poke _bandwidth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; dg_msgs/MonitorState _state_info
       (send _state_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _topic_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _publish_node
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _publish_node (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _publish_rate
     (setq _publish_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _desire_rate
     (setq _desire_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _bandwidth
     (setq _bandwidth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; dg_msgs/MonitorState _state_info
     (send _state_info :deserialize buf ptr-) (incf ptr- (send _state_info :serialization-length))
   ;;
   self)
  )

(setf (get dg_msgs::ROSTopicState :md5sum-) "311695093c106b87476e31b7c6eb9105")
(setf (get dg_msgs::ROSTopicState :datatype-) "dg_msgs/ROSTopicState")
(setf (get dg_msgs::ROSTopicState :definition-)
      "# ros-topic 状态
string topic_name               # 话题名
string publish_node             # 发布节点  
float32 publish_rate            # 当前发布频率
float32 desire_rate             # 期望频率
float32 bandwidth               # 当前占用网络带宽

dg_msgs/MonitorState state_info         # 状态信息
================================================================================
MSG: dg_msgs/MonitorState
# 监控状态 - 当状态正常时错误码为0
int32 error_code            # 错误码
string additional_msgs       # 附加信息
")



(provide :dg_msgs/ROSTopicState "311695093c106b87476e31b7c6eb9105")


