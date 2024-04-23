;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::SoundAudioControl)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'SoundAudioControl (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::SOUNDAUDIOCONTROL")
  (make-package "DG_MSGS::SOUNDAUDIOCONTROL"))
(unless (find-package "DG_MSGS::SOUNDAUDIOCONTROLREQUEST")
  (make-package "DG_MSGS::SOUNDAUDIOCONTROLREQUEST"))
(unless (find-package "DG_MSGS::SOUNDAUDIOCONTROLRESPONSE")
  (make-package "DG_MSGS::SOUNDAUDIOCONTROLRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::SoundAudioControlRequest
  :super ros::object
  :slots (_audio_name _play_count _volume _cancle_play ))

(defmethod dg_msgs::SoundAudioControlRequest
  (:init
   (&key
    ((:audio_name __audio_name) "")
    ((:play_count __play_count) 0)
    ((:volume __volume) 0)
    ((:cancle_play __cancle_play) nil)
    )
   (send-super :init)
   (setq _audio_name (string __audio_name))
   (setq _play_count (round __play_count))
   (setq _volume (round __volume))
   (setq _cancle_play __cancle_play)
   self)
  (:audio_name
   (&optional __audio_name)
   (if __audio_name (setq _audio_name __audio_name)) _audio_name)
  (:play_count
   (&optional __play_count)
   (if __play_count (setq _play_count __play_count)) _play_count)
  (:volume
   (&optional __volume)
   (if __volume (setq _volume __volume)) _volume)
  (:cancle_play
   (&optional __cancle_play)
   (if __cancle_play (setq _cancle_play __cancle_play)) _cancle_play)
  (:serialization-length
   ()
   (+
    ;; string _audio_name
    4 (length _audio_name)
    ;; int32 _play_count
    4
    ;; int32 _volume
    4
    ;; bool _cancle_play
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _audio_name
       (write-long (length _audio_name) s) (princ _audio_name s)
     ;; int32 _play_count
       (write-long _play_count s)
     ;; int32 _volume
       (write-long _volume s)
     ;; bool _cancle_play
       (if _cancle_play (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _audio_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _audio_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _play_count
     (setq _play_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _volume
     (setq _volume (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _cancle_play
     (setq _cancle_play (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dg_msgs::SoundAudioControlResponse
  :super ros::object
  :slots (_is_played ))

(defmethod dg_msgs::SoundAudioControlResponse
  (:init
   (&key
    ((:is_played __is_played) nil)
    )
   (send-super :init)
   (setq _is_played __is_played)
   self)
  (:is_played
   (&optional __is_played)
   (if __is_played (setq _is_played __is_played)) _is_played)
  (:serialization-length
   ()
   (+
    ;; bool _is_played
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_played
       (if _is_played (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_played
     (setq _is_played (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dg_msgs::SoundAudioControl
  :super ros::object
  :slots ())

(setf (get dg_msgs::SoundAudioControl :md5sum-) "274ab99c5d36f88cae47c4b4e730d64c")
(setf (get dg_msgs::SoundAudioControl :datatype-) "dg_msgs/SoundAudioControl")
(setf (get dg_msgs::SoundAudioControl :request) dg_msgs::SoundAudioControlRequest)
(setf (get dg_msgs::SoundAudioControl :response) dg_msgs::SoundAudioControlResponse)

(defmethod dg_msgs::SoundAudioControlRequest
  (:response () (instance dg_msgs::SoundAudioControlResponse :init)))

(setf (get dg_msgs::SoundAudioControlRequest :md5sum-) "274ab99c5d36f88cae47c4b4e730d64c")
(setf (get dg_msgs::SoundAudioControlRequest :datatype-) "dg_msgs/SoundAudioControlRequest")
(setf (get dg_msgs::SoundAudioControlRequest :definition-)
      "# 控制音响的服务
string audio_name       # 音频名    
int32 play_count        # 播放次数              -1 无限循环播放; 0 默认播放一次; 1 播放一次
int32 volume            # 音量大小              [0,100] 
bool cancle_play        # 是否终止播放当前音频    true/false
---
bool is_played          # 播放成功              true/false
")

(setf (get dg_msgs::SoundAudioControlResponse :md5sum-) "274ab99c5d36f88cae47c4b4e730d64c")
(setf (get dg_msgs::SoundAudioControlResponse :datatype-) "dg_msgs/SoundAudioControlResponse")
(setf (get dg_msgs::SoundAudioControlResponse :definition-)
      "# 控制音响的服务
string audio_name       # 音频名    
int32 play_count        # 播放次数              -1 无限循环播放; 0 默认播放一次; 1 播放一次
int32 volume            # 音量大小              [0,100] 
bool cancle_play        # 是否终止播放当前音频    true/false
---
bool is_played          # 播放成功              true/false
")



(provide :dg_msgs/SoundAudioControl "274ab99c5d36f88cae47c4b4e730d64c")


