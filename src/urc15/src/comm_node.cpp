#include "ros/ros.h"
#include "urc15/Comm_DataArray.h"


int main(int argc, char **argv)
{
  ros::init(argc, argv, "comm_node");

  ros::NodeHandle n; 

  ros::Publisher comm_pub = n.advertise<urc15::Comm_DataArray>("comm_topic", 1000);
  ros::Rate loop_rate(10);

  while (ros::ok())
  {
	  static unsigned char v = 2;
	  urc15::Comm_DataArray comdata;
	  comdata.datas.push_back((v%3)+1);
	  comdata.datas.push_back(v+1);
	  comdata.datas.push_back(v+2);
	  comdata.datas.push_back(v+5);

	  comm_pub.publish(comdata);

	  v++;if(v>150)v=0;
	  ros::spinOnce();
	  loop_rate.sleep();

  }
  
  return 0;
}
