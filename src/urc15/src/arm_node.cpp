#include "ros/ros.h"
#include "urc15/Arm.h"
#include "std_msgs/String.h"

void armCallback(const std_msgs::String::ConstPtr& msg)
{
  ROS_INFO("Moving arm to [%s]", msg->data.c_str());
}

bool armServerEvaluate(urc15::Arm::Request  &req,
         urc15::Arm::Response &res)
{
  res.successful = req.algorithm;
  ROS_INFO("request: change to algorithm : %d", req.algorithm);
  ROS_INFO("using algorithm: [%d]", res.successful);
  return true;
}


int main(int argc, char **argv)
{
  
  ros::init(argc, argv, "arm_node");
  
  ros::NodeHandle n;

  ros::Subscriber arm_sub = n.subscribe("arm_topic", 1000, armCallback);
  ros::ServiceServer arm_service = n.advertiseService("arm_server", armServerEvaluate);

  ros::spin();

  return 0;
}
