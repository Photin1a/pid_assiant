#include <ros/ros.h>
#include <photinia_msgs/PIDParams_srv.h>

bool PidParamsCallback(photinia_msgs::PIDParams_srv::Request &req, photinia_msgs::PIDParams_srv::Response &res) {
    ROS_INFO("time:%s\nlinear(%f,%f,%f),angle(%f,%f,%f)\nmax_v:%f   max_w:%f\ntest_distance:%f", req.time.c_str(), req.linear_p, req.linear_i, req.linear_d, req.angle_p, req.angle_i, req.angle_d, req.max_linear, req.max_w, req.test_distance);
    res.is_success = true;
    return true;
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "pid_server");
    ros::NodeHandle public_nh;

    auto pid_server_srv = public_nh.advertiseService("/pid_params_srv", PidParamsCallback);

    ros::spin();
    return 0;
}