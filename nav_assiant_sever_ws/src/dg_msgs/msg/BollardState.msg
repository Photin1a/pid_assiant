# 升降柱状态信息
string number               # 设备组编号
string bollard_name         # 升降柱名
float32 absolute_height     # 升降柱绝对高度
float32 speed               # 升降柱速度
bool is_aviable             # 当前是否可用；急停被按下、当前处于自动、modbus指针没有成功建立
bool is_moving              # 当前是否正在运动