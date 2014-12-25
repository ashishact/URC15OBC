//============================================================================
// Name        : serilaportinfo.cpp
// Author      :
// Version     :
// Copyright   : Your copyright notice
// Description : Serial Port Operation
//============================================================================
//device hardware id A601XNVW
#include <string>
#include <iostream>
#include <cstdio>

// OS Specific sleep
#ifdef _WIN32
#include <windows.h>
#else
#include <unistd.h>
#endif

#include "communication/serial.h"

using std::string;
using std::exception;
using std::cout;
using std::cerr;
using std::endl;
using std::vector;
using std::cin;



#include "ros/ros.h"
#include "communication/Comm_DataArray.h"
string getPort(string hardwareID)
{
	vector<serial::PortInfo> devices_found = serial::list_ports();

	vector<serial::PortInfo>::reverse_iterator riter = devices_found.rbegin();

	while( riter != devices_found.rend() )
	{
		serial::PortInfo device = *riter++;


		size_t L = device.hardware_id.length();
		size_t l = hardwareID.length();
		if(l>L)continue;
		size_t pos = device.hardware_id.find(hardwareID,L-l);

		if(pos < L){
			ROS_INFO( "Found Port-> (%s, %s, %s)\n", device.port.c_str(), device.description.c_str(),
			     device.hardware_id.c_str() );
			return device.port;
		}

	}
	return "null";
}


serial::Serial my_serial;
string port;
unsigned long baud=9600;
bool connected = false;

bool connect(string hid){
	port = getPort(hid);
	if(port == "null"){
	  ROS_ERROR("XBEE's not connected");
	  usleep(3000000);
	  return false;
	}
	else{
		if(my_serial.isOpen()){
			my_serial.close();
		}

		 my_serial.setPort(port);
			  my_serial.setBaudrate(baud);
			  my_serial.setTimeout(serial::Timeout::max(), 250, 0, 250, 0);
			  ROS_INFO("Connecting...");
			  my_serial.open();

			  if(my_serial.isOpen()){
				  ROS_INFO("Connected");
				  return true;
			  }
			  else{
				  ROS_ERROR("Could not connect to device");
				  return false;
			  }

	}
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "communication_node");

  ros::NodeHandle n;

  ros::Publisher communication_pub = n.advertise<communication::Comm_DataArray>("comm_topic", 1000);
  ros::Rate loop_rate(20);
  ROS_INFO("Communication node Started");

	while (ros::ok())
	 {
	    try {

	  	  if (!connected){
	  		  connected = connect("A601XNVW");
	  	  }
	  	  else{
			  size_t avail = my_serial.available();
			  if(avail){
				string result = my_serial.read(avail);
				ROS_INFO(result.c_str());
			  }
		  }


	  	  static unsigned char v = 2;
	  	  communication::Comm_DataArray comdata;
	  	  comdata.datas.push_back((v%3)+1);
	  	  comdata.datas.push_back(v+1);
	  	  comdata.datas.push_back(v+2);
	  	  comdata.datas.push_back(v+5);

	  	  communication_pub.publish(comdata);

	  	  ros::spinOnce();
	  	  loop_rate.sleep();

		} catch (exception &e) {
			ROS_ERROR("Un-Handled Exception, %s",e.what());
			connected=false;
		}
	}







    return 0;

}
