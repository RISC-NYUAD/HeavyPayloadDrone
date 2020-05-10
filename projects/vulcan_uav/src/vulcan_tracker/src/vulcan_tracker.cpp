/*********************************************************************
 * Software License Agreement (BSD License)
 *
 *  Copyright (c) 2010, UC Regents
 *  Copyright (c) 2011, Markus Achtelik, ETH Zurich, Autonomous Systems Lab (modifications)
 * 	Copyright (C) 2018, Nikolaos Evangeliou, NYU Abu Dhabi, Robotics Lab (modifications)
 *  All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions
 *  are met:
 *
 *   * Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *   * Redistributions in binary form must reproduce the above
 *     copyright notice, this list of conditions and the following
 *     disclaimer in the documentation and/or other materials provided
 *     with the distribution.
 *   * Neither the name of the University of California nor the names of its
 *     contributors may be used to endorse or promote products derived
 *     from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 *  FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 *  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 *  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 *  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 *  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 *  ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 *  POSSIBILITY OF SUCH DAMAGE.
 *********************************************************************/

#include <ros/ros.h>
#include <tf/tf.h>
#include <tf/transform_listener.h>
#include <geometry_msgs/TransformStamped.h>
#include <geometry_msgs/PoseStamped.h>

#include <tf/transform_datatypes.h>
//#include <tf_conversions/tf_eigen.h>
//#include "Eigen/Core"
//#include "Eigen/Geometry"

#include <iostream>
#include <fstream>
#include <thread>
#include <ios>
#include <cstring>
#include <chrono> //ctime is included
#include <vector>
#include <stdlib.h>
#include <pwd.h>
#include <inttypes.h>
#include <sstream>
#include <termios.h>
#include <fcntl.h>
#include <string.h>

#define RATE 100 //Hz

#define CIRCLE_PERIOD 100 //seconds to complete one circle

ros::Time last_time, new_time; 
int ch;

geometry_msgs::PoseStamped EKFPose;
geometry_msgs::PoseStamped viconPose;

std::string fileName;
std::ofstream outfile;

//Function used to return string type file name using current date/time
std::string date_filename(void){
	//Get current date/time
	auto now = std::chrono::system_clock::now();
	std::time_t now_c = std::chrono::system_clock::to_time_t(now);
	struct tm *parts = std::localtime(&now_c);
	//Assign 
	std::string filename= "Vicon_y" + std::to_string(parts->tm_year-100) //Set Year
											+ "m" + std::to_string(parts->tm_mon+1) //Set Month
												+ "d" + std::to_string(parts->tm_mday) //Set day
													+ "h" + std::to_string(parts->tm_hour) //Set hour
														+ "min" + std::to_string(parts->tm_min) //Set minute
															//+ "s" + std::to_string(parts->tm_sec) //Set second
																+ ".csv";
	return filename;
}

int compute_sign(double number){
	return (number > 0) - (number < 0);
}


//Keyboard function used to terminate the program on user input
int kbhit(void)
{
	struct termios oldt, newt;
	int oldf;
	
	tcgetattr(STDIN_FILENO, &oldt);
	newt = oldt;
	newt.c_lflag &= ~(ICANON | ECHO);
	tcsetattr(STDIN_FILENO, TCSANOW, &newt);
	oldf = fcntl(STDIN_FILENO, F_GETFL, 0);
	fcntl(STDIN_FILENO, F_SETFL, oldf | O_NONBLOCK);
	
	ch = getchar();
	
	tcsetattr(STDIN_FILENO, TCSANOW, &oldt);
	fcntl(STDIN_FILENO, F_SETFL, oldf);
	
	if (ch != EOF)	return 1;
	return 0;
}

//Function used to get user name
std::string get_username() {
	struct passwd *pwd = getpwuid(getuid());
	if (pwd)	return pwd->pw_name;
	return "?";
}

void viconPoseFeedback(geometry_msgs::PoseStamped viconPose_){
	viconPose=viconPose_;
	//Write pose(s) to file	
	outfile << viconPose.pose.position.x << ";" <<  viconPose.pose.position.y << ";" <<  viconPose.pose.position.z << ";" 
				<<  viconPose.pose.orientation.w << ";" <<  viconPose.pose.orientation.x << ";" <<  viconPose.pose.orientation.y << ";" << viconPose.pose.orientation.z << ";" 
					<< EKFPose.pose.position.x << ";" <<  EKFPose.pose.position.y << ";" <<  EKFPose.pose.position.z <<  ";" 
						<<  EKFPose.pose.orientation.w << ";" <<  EKFPose.pose.orientation.x << ";" <<  EKFPose.pose.orientation.y << ";" << EKFPose.pose.orientation.z << ";"  << std::endl;
}

void EKFPoseFeedback(geometry_msgs::PoseStamped EKFPose_){
	//Save EKF pose to global variable
	EKFPose=EKFPose_;
}

int main(int argc, char** argv)
{
	ros::init(argc, argv, "trajectory_follow");
	ros::NodeHandle nh("~");
	//Create Vicon measurement topic
	ros::Subscriber vulcan_pose = nh.subscribe("/mavros/vision_pose/pose", 1, &viconPoseFeedback);
	//ros::Subscriber vulcan_pose = nh.subscribe("/vrpn_client_node/ActiveWandv2/pose", 1, &viconPoseFeedback);
	ros::Subscriber EKF_pose = nh.subscribe("/mavros/local_position/pose", 1, &EKFPoseFeedback);
	//Create velocity publisher for turtlebot
	ros::Rate loop_rate(RATE);
	//Write measurements to file
	std::string usr=get_username();
	if(usr!="?") fileName="/home/"+usr+"/projects/vulcan_uav/devel/lib/vulcan_tracker/"+date_filename(); //try to get username, if not save to home folder
	else fileName=date_filename();
	outfile.open(fileName, std::ios::out | std::ios::trunc);
	if (outfile.fail()){
		throw std::ios_base::failure(std::strerror(errno));
		return -1;
	}
	//make sure write fails with exception if something is wrong
	outfile.exceptions(outfile.exceptions() | std::ios::failbit | std::ifstream::badbit);
		outfile << "Vicon Pose Position (t_x)" << ";" <<  "t_y" << ";" <<  "t_z" << ";" 
				<<  "Vicon Pose Quat (q_w)" << ";" <<  "q_x" << ";" <<  "q_y" << ";" << "q_z" << ";" 
					<< "EKF Pose Position (t_x)" << ";" <<  "t_y" << ";" <<  "t_z" << ";" 
						<<  "EKF Pose Quat (q_w)" << ";" <<  "q_x" << ";" <<  "q_y" << ";" << "q_z" << ";" << std::endl;
	//MAIN Loop
	last_time=new_time=ros::Time::now();
	while(kbhit()==0 && ros::ok())
	{
		//Spin until user stops program
		ros::spinOnce();
		loop_rate.sleep();
	}
// 		}
	outfile.close();
	std:: cout << "Data logged to " << fileName << std::endl;
	return 0;
}