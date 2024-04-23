string robot_name
string robot_model
string state    # 机器人状态，standby（开机之后，正常状态），working（采集状态），teaching（示教），emergency（急停），exception（异常状态，有报错信息）
int32 battery_level # 0 = empty, 100 = full
int32 exception_code        # 异常码
string exception_message    # 异常信息

