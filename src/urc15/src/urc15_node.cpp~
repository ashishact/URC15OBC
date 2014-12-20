#include "ros/ros.h"
#include "urc15/Arm.h"
#include "urc15/Navigation.h"
#include "std_msgs/String.h"

#include <sstream>
int main(int argc, char **argv)
{
  ros::init(argc, argv, "urc15_node");

  ros::NodeHandle n;

  ros::Publisher navigation_pub = n.advertise<std_msgs::String>("navigation_topic", 1000);
  ros::Publisher arm_pub = n.advertise<std_msgs::String>("arm_topic", 1000);

  ros::ServiceClient navigation_client = n.serviceClient<urc15::Navigation>("navigation_server");
  ros::ServiceClient arm_client = n.serviceClient<urc15::Arm>("arm_server");

  ros::Rate loop_rate(10);

  int count = 0;
  while (ros::ok())
  {
    std_msgs::String navigation_msg;
    
    std::stringstream ss;
    ss << "Navigation message " << count;
    navigation_msg.data = ss.str();

    ROS_INFO("%s", navigation_msg.data.c_str());

    std_msgs::String arm_msg;
    arm_msg.data = "arm message";
    ROS_INFO("Arm message publishing");

    navigation_pub.publish(navigation_msg);
    arm_pub.publish(arm_msg);


  urc15::Navigation nav_srv;
  nav_srv.request.sendSatCount = 1;
  if (navigation_client.call(nav_srv))
  {
    ROS_INFO("no of sattelite is: %d", nav_srv.response.satCount);
  }
  else
  {
    ROS_ERROR("Failed to call service nav_server");
  }
/*................................................*/
  urc15::Arm arm_srv;
  arm_srv.request.algorithm = 4;
  if (arm_client.call(arm_srv))
  {
    ROS_INFO("current algorithm changed to: %d", arm_srv.response.successful);
  }
  else
  {
    ROS_ERROR("Failed to call service arm_server");
  }













//********************************************************//

    ros::spinOnce();

    loop_rate.sleep();
    ++count;
  }
  
  ROS_INFO("\nurc15_node ends\n");

  return 0;
}
