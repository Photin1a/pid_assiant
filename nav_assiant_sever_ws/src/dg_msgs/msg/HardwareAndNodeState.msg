dg_msgs/ROSTopicState[] ros_topic_state                 # ros话题状态

dg_msgs/GeneralHardwareAndNodeState[] ros_node_state    # ros节点状态
dg_msgs/GeneralHardwareAndNodeState[] ros_service_state # ros服务状态
dg_msgs/GeneralHardwareAndNodeState[] daemon_state      # 守护内容状态
dg_msgs/GeneralHardwareAndNodeState[] system_file_state # 系统文件状态

dg_msgs/NetworkedDevicesState[] networked_device_state  # 联网设备状态

dg_msgs/CPUMemNetState cpu_mem_state                    # cpu状态
dg_msgs/ChassisState chassis_state                      # 底盘状态

dg_msgs/UniversalStateInfo[] working_node_error         # 计算节点报错信息 - 只能包含对全局有影响的错误，如机械臂碰撞，底盘错误

string last_update_time                                 # 最近一次诊断时间 - 格式 %Y-%m-%d %H:%M:%S