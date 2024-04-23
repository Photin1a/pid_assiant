## 描述

这是一个用于定义通用接口的包，只提供接口不提供具体实现。本项目只依赖ROS标准库，所有不涉及具体硬件/软件依赖的接口都可以放到这里。

## 接口

- 机器人状态

  Topic：`robot/state`

  Type：`dg_msgs/RobotInfo`

  描述：

  |字段名|描述|
  |---|---|
  |robot_name|机器人名称|
  |robot_model|机器人型号|
  |battery_level|机器人电量百分比，取值范围 0~100|
  |state|机器人状态，standby（开机之后，正常状态），working（采集状态），teaching（示教），emergency（急停），exception（异常状态，有报错信息）|
  |exception_code|异常码|
  |exception_message|异常信息|

- 下发运动指令

  Topic：`chassis/cmd_vel`

  Type：[`geometry_msgs/Twist`](http://docs.ros.org/en/api/geometry_msgs/html/msg/Twist.html)

  描述：

  - 线速度linear，单位m/s，对于我们的机器人底盘只有x轴有效。前进为正，后退为负。
  - 角速度angular,单位rad/s，对于我们的机器人底盘只有z轴有效。左转为正，右转为负。

- 设置速度比率

  Service：`chassis/speed_scale`

  Type：`dg_msgs/SpeedScale`

  描述：

  - 通过设置速度比例，指定当前底盘的最大线速度和最大角速度。底盘的物理最大线速度和最大角速度为底层固定值
  - 服务的响应为特定比例折算为具体的线速度（m/s）和角速度（rad/s）
  - 当通过速度下发的接口，输出了大于当前速度指令时，底层会自动进行截断，以当前最大速度进行执行

- 底盘状态

  Topic：`chassis/state`

  Type：`dg_msgs/ChassisInfo`

  描述：

  |字段名|描述|
  |---|---|
  |equipment.equipment_id|设备ID|
  |equipment.equipment_name|设备名称|
  |equipment.connected|底盘是否连接或底盘控制模块是否启动成功|
  |equipment.connected_time|连接时间|
  |equipment.model|型号|
  |equipment.manufacturer|制造商|
  |min_linear_speed|最小线速度|
  |max_linear_speed|最大线速度|
  |linear_speed_scaling|线速度比率，取值范围 0.0~1.0，线速度计算公式为`min + scale * (max - min)`|
  |min_angular_speed|最小角速度|
  |max_angular_speed|最大角速度|
  |angular_speed_scaling|角速度比率，取值范围 0.0~1.0，角速度计算公式为`min + scale * (max - min)`|

- 急停指令

  Service：`action/emergency_stop`

  Type：`dg_msgs/EmergencyStop`

  描述：

  - `stop = true`，使机器人进入急停状态，包括底盘、机械臂等设备都需做出急停响应，此时速度下发指令无法控制底盘
  - `stop = false`，清除急停状态，清除急停状态后机器人才能正常工作

- 拍照

  Service: `action/take_pictures`

  type: `dg_msgs/TakePictures`

- 采集

  Action：`acquisition_task`

  Type：`dg_msgs/AcquisitionTask`

  描述：
  应用层通过此接口将任务采集信息发到设备层，每次发送一个停车点及其包含的像点，拍摄结果通过feedback和result返回，结果中需包含像点信息

- 获取车间地图

  Service: `workshop/map`

  Type: `dg_msgs/WorkshopMap`

- 获取坑道地图

  Service: `channel/map`

  Type: `dg_msgs/ChannelMap`

- 坑道对齐

  Service: `channel/aligning`

  Type: `dg_msgs/ChannelAligning`

- 获取车型地图

  Service: `train_type/map`

  Type: `dg_msgs/TrainTypeMap`

- 获取转向架模型

  Service: `bogie/model`

  Type: `dg_msgs/BogieModel`

- 转向架对齐

  Service: `bogie/aligning`

  Type: `dg_msgs/BogieAligning`

- 获取停车点

  Service: `train/stop_location`

  Type: `dg_msgs/TrainStopLocation`

- 获取纠偏点

  Service: `correction_point/current_position`

  Type: `dg_msgs/CurrentCorrectionPoint`

- 获取拍照点

  Service: `image_point/current_position`

  Type: `dg_msgs/CurrentImagePoint`

- 机器人的当前位置

  Service：`robot/current_position`

  Type: `dg_msgs/CurrentRobotPosition`

- 点云配准

  Service: `/pcd_registration`

  Type: `dg_msgs/PcdRegistration`

  描述:
  |字段名|描述|
  |---|---|
  |data_collect|选择source点云获取方式: 0从文件读取(需要给出source点云的文件地址),1激光雷达采集点云(需要给出topic_lidar), 2精扫相机采集点云|
  |topic_lidar|要用来采集点云的liar话题|
  |collection_frames|想采集的帧数|
  |path_source|source点云的文件地址|
  |path_target|target点云的文件地址|
  |statistical_filter_source|是否对source点云滤波|
  |statistical_filter_target|是否对target点云滤波|
  |use_fpfh|是否使用fpfh粗配准|
  |return:||
  |result_registration|配准是否成功|
  |geometry_msgs/Transform transform|配准结果|
  |status_info|返回状态信息|

- fast_lio里程计

  Service: `/fastlio_odometry`

  Type: `dg_msgs/FastLioOdometry`

  描述:
  |字段名|描述|
  |---|---|
  |use_odometry|启动(true)/停止(false)里程计|
  |topic_lidar|lidar话题|
  |return:||
  |status_odometry|odometry的启动状态, true:已启动, false: 已停止|
  |status_request_success|当前启动/停止的请求是否成功|
  |status_info|状态信息: 正常启动/停止, 在已经启动/停止时再次请求启动/停止|


### 机械臂接口

- 机械臂使能

  Service：`robot_arm/enable`

  Type: `dg_msgs/RobotArmEnable`

- 机械臂示教

  Service：`robot_arm/teaching`

  Type: `dg_msgs/RobotArmTeaching`

- 机械臂复位（回到工作初始状态）

  Service：`robot_arm/standby`

  Type: `dg_msgs/RobotArmStandby`

- 收起机械臂（回到非工作初始状态）

  Service：`robot_arm/rest`

  Type: `dg_msgs/RobotArmRest`

- 机械臂的运行速度控制

  Service: `robot_arm/speedFactory`

  Type: `dg_msgs/RobotArmSpeed`

- 机械臂和碰撞物的安全距离设定

  Service: `robot_arm/collisionDist`

  Type: `dg_msgs/SafeDistanceSet`

- 机械臂碰撞测试接口

  Service: `robot_arm/collisionTest`

  Type: `dg_msgs/CollisionTest`

  描述：机械臂和转向架、坑道等模型之间有10cm的安全范围，如果在安全范围内，当前示教的相机位置就不对，需要更换位置和调整姿态。机械臂碰撞接口可以返回是否在安全范围内，否则的话返回哪一个关节和周围环境发生碰撞或者和自身发生碰撞

### 升降柱接口

- 控制升降柱的上下运动接口

  Action: `robot_arm/liftkitUpDown`

  Type: `dg_msgs/LiftkitUpDown`

- 控制升降柱的上下极限位置

  Service: `robot_arm/liftkitLimtPosition`

  Type: `dg_msgs/LiftkitLimitPosition`