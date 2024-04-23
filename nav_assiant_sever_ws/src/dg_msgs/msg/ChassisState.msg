string chassis_state_json                    # 底盘各种参数的json文件
string chassis_type                          # 底盘类型
string chassis_name                          # 底盘名

# [核心参数] - 是上面的子集
float32 battery                              # 电池电量
geometry_msgs/PoseStamped current_pose       # 底盘当前所在位置
bool is_charged                              # 当前是否在充电

Header header                                # 头部信息 - 主要使用的是时间戳
dg_msgs/MonitorState state_info              # 状态信息