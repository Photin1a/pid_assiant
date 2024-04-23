int32 type          # 类型编号，用于唯一区分每种通知
string level         # 等级，包含 verbose, normal, warning, critical
string title        # 标题
string message      # 通知文字描述
string data         # 通知数据，数据内容由通知类型决定，可能为json，base64等多种格式
uint64 datetime     # 时间