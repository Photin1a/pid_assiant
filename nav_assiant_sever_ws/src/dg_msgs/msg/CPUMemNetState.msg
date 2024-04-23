# CPU                            # /proc/stat
int32 cpu_count                  # cpu核心数
float64 cpu_usage                # cpu利用率
int32 cpu_load_1min              # cpu负载
int32 cpu_load_5min
int32 cpu_load_15min
int32 process_count              # 当前进程数

# Mem                            # None
float32 mem_total                # 总内存大小 MB
float32 mem_free                 # 当前可用内存大小 MB
float32 mem_used_percent         # 内存使用率 %

dg_msgs/DiskState[] disk_states  # 硬盘状态
dg_msgs/NetworkCardState[] network_card_state  # 网卡状态
