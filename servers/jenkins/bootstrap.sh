#!/bin/sh

##########
# Docker #
##########

# install the backported kernel
sudo apt-get update
sudo apt-get install linux-image-generic-lts-raring linux-headers-generic-lts-raring -y

# Check that the APT system can deal with https URLs
[ -e /usr/lib/apt/methods/https ] || {
  sudo apt-get install apt-transport-https -y
}

# Add the Docker repository key to the local keychain
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9

# Install the lxc-docker package
sudo apt-get install curl -y
sudo curl -s https://get.docker.io/ubuntu/ | sudo sh

# Run the Jenkins container
sudo docker run -d -p 0.0.0.0:49153:8080 vfarcic/jenkins