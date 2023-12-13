#!/bin/bash

# Script generated from official Docker Repo: https://docs.docker.com/engine/install/ubuntu/

# 01
## Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

## Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# 02 - Install Docker Packages
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugins

# 03 - Testing Docker Installation
sudo docker run hello-world

# 04 - Remove the need of using SUDO
## Create the docker group.
sudo groupadd docker

## Add your user to the docker group.
sudo usermod -aG docker $USER

## INFO
echo "Done! For a better experience install the VSCode extention."
sleep 5

## Reboot
echo "Rebooting the system to apply changes..."
sleep 5
sudo reboot