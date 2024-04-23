EquipmentCommon equipment
string number           # 设备组编号
int32 state
bool enabled            # 机械臂是否使能标志
bool protective_stop    # 机械臂是否检测到碰撞
bool emergency_stop     # 机械臂是否急停
bool drag_status        # 机械臂是否处于拖拽状态
bool recording          # 机械臂是否处于录制状态
bool moving_stop        # 机械臂是否处于运动状态
float64 speed_ratio     # 机械臂当前速度
bool error_status       # 机械臂是否处于报错状态
string[] error_msgs     # 机械臂的错误信息反馈
string payload          # 自定义信息，用于存放不同型号机械臂信息