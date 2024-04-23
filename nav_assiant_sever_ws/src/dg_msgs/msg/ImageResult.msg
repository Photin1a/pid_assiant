string id
int32 result        # 拍照结果 0: 成功  非0：失败
string gray         # 灰度图路径
string rgb          # 彩色图路径
string depth        # 深度图路径
string point_cloud  # 点云路径
float32[] intrinsic # 相机内参