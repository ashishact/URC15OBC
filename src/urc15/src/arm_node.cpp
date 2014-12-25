#include "ros/ros.h"
#include "urc15/Arm.h"
#include "communication/Comm_DataArray.h"

void armCallback(const communication::Comm_DataArrayConstPtr& pkg)
{
  ROS_INFO("Arm Rec [%d] with ID:[%d]", pkg->datas[1], pkg->datas[0]);
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

  ROS_INFO("Arm node Started");
  ros::spin();

  return 0;
}
