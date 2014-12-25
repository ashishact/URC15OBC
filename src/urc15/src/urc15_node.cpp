#include "ros/ros.h"
#include "urc15/Arm.h"
#include "urc15/Navigation.h"
#include "communication/Comm_DataArray.h"
#include "std_msgs/String.h"


	ros::Publisher navigation_pub;
	ros::Publisher arm_pub;
	ros::Subscriber comm_sub;
	ros::ServiceClient navigation_client;
	ros::ServiceClient arm_client;


void onRecievedPkgCallback(const communication::Comm_DataArrayConstPtr& pkg)
{
  ROS_INFO("X bee value found [%d]", pkg->datas[0]);
  unsigned char ID = pkg->datas[0];
  switch(ID){

  	  case 1:
  		  navigation_pub.publish(pkg);
  		  break;
  	  case 2:
  		  arm_pub.publish(pkg);
  		  break;

  }

}


int main(int argc, char **argv)
{
  ros::init(argc, argv, "urc15_node");

  ros::NodeHandle n;

  navigation_pub = n.advertise<communication::Comm_DataArray>("navigation_topic", 1000);
  arm_pub = n.advertise<communication::Comm_DataArray>("arm_topic", 1000);

  comm_sub = n.subscribe("comm_topic", 1000, onRecievedPkgCallback);

  navigation_client = n.serviceClient<urc15::Navigation>("navigation_server");
  arm_client = n.serviceClient<urc15::Arm>("arm_server");

  ROS_INFO("URC15 node Started");
  ros::Rate loop_rate(10);
  while (ros::ok())
  {


//  urc15::Navigation nav_srv;
//  nav_srv.request.sendSatCount = 1;
//  if (navigation_client.call(nav_srv))
//  {
//    ROS_INFO("no of satellite is: %d", nav_srv.response.satCount);
//  }
//  else
//  {
//    ROS_ERROR("Failed to call service nav_server");
//  }
///*................................................*/
//  urc15::Arm arm_srv;
//  arm_srv.request.algorithm = 4;
//  if (arm_client.call(arm_srv))
//  {
//    ROS_INFO("current algorithm changed to: %d", arm_srv.response.successful);
//  }
//  else
//  {
//    ROS_ERROR("Failed to call service arm_server");
//  }






//********************************************************//

    ros::spinOnce();
    loop_rate.sleep();
  }
  
  ROS_INFO("\nurc15_node ends\n");

  return 0;
}
