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
#include <deque>
//#include <boost/lockfree/queue.hpp>

// OS Specific sleep
#ifdef _WIN32
#include <windows.h>
#else
#include <unistd.h>
#endif

#include "ros/ros.h"
#include "communication/Comm_DataArray.h"
#include "communication/serial.h"

using std::string;
using std::exception;
using std::cout;
using std::cerr;
using std::endl;
using std::vector;
using std::cin;


//boost::lockfree::queue<unsigned char>dataQueue;
std::deque<unsigned char> rawDataQueue;	//stores raw data coming from the communication module
serial::Serial my_serial;
string port;
unsigned long baud=9600;
bool connected = false;

ros::Publisher communication_pub;



void sendData(){
	std::vector<int>delimeter_pos;
	for(int i =0; i < rawDataQueue.size(); i++){
		if(rawDataQueue.at(i)==251){
			delimeter_pos.push_back(i);
		}
	}
	if(delimeter_pos.size()>=2){
		communication::Comm_DataArray comdata;
		for(int p = 0; p < delimeter_pos.size()-1; p++){
			for(int idx = delimeter_pos.at(p)+1; idx < delimeter_pos.at(p+1); idx++){
				comdata.datas.push_back(rawDataQueue.at(idx));
			}
			communication_pub.publish(comdata);
		}
		rawDataQueue.erase(rawDataQueue.begin(),rawDataQueue.begin()+delimeter_pos.back()-1);
	}
}
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

  communication_pub = n.advertise<communication::Comm_DataArray>("communication_topic", 1000);
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
				for(int i=0; i < result.length();i++){
					rawDataQueue.push_back(result[i]);
//					cout<<result[i]<<" * ";
				}
				sendData();	// send data to the urc15 node
//				ROS_INFO(result.c_str());// it's giving segmentation fault
			  }
		  }

	  	  ros::spinOnce();
	  	  loop_rate.sleep();

		} catch (exception &e) {
			ROS_ERROR("Un-Handled Exception, %s",e.what());
			connected=false;
		}
	}







    return 0;

}
