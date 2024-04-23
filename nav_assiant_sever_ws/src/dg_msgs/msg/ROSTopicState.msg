# ros-topic 状态
string topic_name               # 话题名
string publish_node             # 发布节点  
float32 publish_rate            # 当前发布频率
float32 desire_rate             # 期望频率
float32 bandwidth               # 当前占用网络带宽

dg_msgs/MonitorState state_info         # 状态信息