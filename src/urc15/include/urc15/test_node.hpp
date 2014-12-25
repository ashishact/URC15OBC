#include "ros/ros.h"
#include "communication/Comm_DataArray.h"

void setup();
void loop();
void close();

void testCallback(const communication::Comm_DataArrayConstPtr& pkg)
{
  ROS_INFO("callback in TestNode [%d]", pkg->datas[0]);
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "test_node");

  ros::NodeHandle n;

  ros::Subscriber test_sub = n.subscribe("navigation_topic", 1000,testCallback);

  ROS_INFO("Test node Started");
  ros::Rate loop_rate(10);
  while (ros::ok())
  {
	loop();
	ros::spinOnce();
	loop_rate.sleep();
  }

  return 0;
}
