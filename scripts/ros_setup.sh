#!/bin/bash

CUSTOM_SCRIPTS_DIR=$GITHUB_DIR/Utils/custom_scripts

echo ""
echo "Installing ROS Noetic ..."

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt install curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt update
sudo apt install ros-noetic-desktop-full

ROS_WS_DIR=~/ros
if [ ! -d "$ROS_WS_DIR" ];
then
	echo "Creating dir: $ROS_WS_DIR"
	mkdir $ROS_WS_DIR
fi
echo "export ROS_WS_DIR=$ROS_WS_DIR" >> ~/.env_params.env

echo ""
echo "ROS Noetic Installed. Installing main dependencies ..."

sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential
sudo apt install python3-rosdep
sudo rosdep init
rosdep update

echo ""
echo "Installing Qt-ROS Plugin ..."
sudo snap install qtcreator-ros --classic

echo ""
echo "personalizing bashrc ..."

sudo echo "" >> ~/.bashrc
sudo echo "source $CUSTOM_SCRIPTS_DIR/scripts/set_ros_master_uri.sh" >> ~/.bashrc

echo ""
echo "bashrc personalization completed."
