geometry_msgs/PoseStamped pose_stop_trainhead
geometry_msgs/PoseStamped pose_stop_region
int32                     model_type
string                    model_path
geometry_msgs/PoseArray   camera_region
int32                     region_type           # 区域类型，0直接复用，1镜像复用，2旋转180复用
float64[]                 matrix_region_init
float64[]                 matrix_region_trainhead
int32                     reg_type              # 配准采集数据类型， 0为相机，1为雷达
string                    lidar_topic
CorrectionPoint           correction_point
CropBox                   box_target
CropBox                   box_source
int32                     cruising_route_type
int32                     geometry_completion_type
geometry_msgs/PoseStamped pose_regionframe_region
geometry_msgs/PoseStamped pose_regionframe_trainhead
trajectory_msgs/JointTrajectoryPoint[]                          correction_joint
string                      region_frame_path