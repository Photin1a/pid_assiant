# 硬盘状态
string disk_name            # 硬盘盘符
float32 disk_total          # 硬盘总空间 GB
float32 disk_used           # 已经使用的空间 GB
float32 disk_avail          # 剩余可用空间
float32 disk_used_percent   # 硬盘使用率

dg_msgs/MonitorState state_info         # 状态信息