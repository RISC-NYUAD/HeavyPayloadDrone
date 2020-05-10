#!/bin/bash

cd ~/projects/kinova-ros/
source devel/setup.bash
roslaunch kinova_bringup kinova_robot.launch kinova_robotType:=j2s7s300 & 
gnome-terminal -x bash -c "sleep 2; cd ~/projects/kinova-ros/; source devel/setup.bash; rosrun ne_kinova_demo CartesianTrajectorySingleMarker"


