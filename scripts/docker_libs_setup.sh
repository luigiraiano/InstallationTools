#!/bin/bash

# Script generated from official Docker Repo: https://docs.docker.com/engine/install/ubuntu/

# 01
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# 02 - Install Docker Packages
sleep 5
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# 03 - Testing Docker Installation
sleep 5
sudo docker run hello-world

# 04 - Remove the need of using SUDO
## Create the docker group.
sleep 5
sudo groupadd docker

## Add your user to the docker group.
sleep 5
sudo usermod -aG docker $USER

## INFO
echo "Done! For a better experience install the VSCode extention."
sleep 5

## Reboot
echo "Rebooting the system to apply changes..."
sleep 5
sudo reboot