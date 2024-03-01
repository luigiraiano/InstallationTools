#!/bin/bash

CUSTOM_SCRIPTS_DIR=$GITHUB_DIR/Utils/custom_scripts

sudo apt update
sudo apt-get update

echo ""
echo "Installing CMake ..."
sudo apt-get -y install cmake

echo ""
echo "Installing EIGEN Libraries ..."
sudo apt install libeigen3-dev

echo "Installing YAML-CPP"
sudo apt install libyaml-cpp-dev

echo "Installing Python3"
sudo apt install python3

echo "Installing PIP"
sudo apt install pip
