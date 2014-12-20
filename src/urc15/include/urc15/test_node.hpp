#include "ros/ros.h"
#include "std_msgs/String.h"

void setup();
void loop();
void close();

void testCallback(const std_msgs::String::ConstPtr& msg)
{
  ROS_INFO("callback in TestNode [%s]", msg->data.c_str());
}

int main(int argc, char **argv)
{
  
  ros::init(argc, argv, "test_node");

  ros::NodeHandle n;

  ros::Subscriber test_sub = n.subscribe("navigation_topic", 1000,testCallback);

  ros::Rate loop_rate(10);
  while (ros::ok())
  {
	loop();
	ros::spinOnce();
	loop_rate.sleep();
  }

  return 0;
}
