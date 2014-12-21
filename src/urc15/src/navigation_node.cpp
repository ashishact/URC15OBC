#include "ros/ros.h"
#include "urc15/Navigation.h"
#include "std_msgs/String.h"


void navigationCallback(const std_msgs::String::ConstPtr& msg)
{
  ROS_INFO("Moving towards [%s]", msg->data.c_str());
}

bool navigationServerEvaluate(urc15::Navigation::Request  &req,
         urc15::Navigation::Response &res)
{
  if(req.sendSatCount){
  	res.satCount = 6; // find no of satellite
  }
  
  return true;
}

int main(int argc, char **argv)
{
  
  ros::init(argc, argv, "navigation_node");

  ros::NodeHandle n;

  ros::Subscriber navigation_sub = n.subscribe("navigation_topic", 1000, navigationCallback);
  ros::ServiceServer navigation_service = n.advertiseService("navigation_server", navigationServerEvaluate);

  ros::Rate loop_rate(10);
  while (ros::ok())
  {
	ros::spinOnce();
	loop_rate.sleep();
  }

  return 0;
}
