#!/bin/bash

# Installs Bonjour/Zeroconf (to access the rpi as 'raspberryname.local'):
#sudo apt-get update
#sudo apt-get install libnss-mdns

sudo docker build -t resin/rpi-raspbian ../workspace/sources/resin-rpi-raspbian/ -f ../workspace/sources/resin-rpi-raspbian/Dockerfile
sudo docker build -t px4io/px4-dev-base ../workspace/sources/px4-containers/docker/px4-dev/ -f ../workspace/sources/px4-containers/docker/px4-dev/Dockerfile_base
#sudo docker build -t px4io/px4-dev-armhf ../workspace/sources/px4-containers/docker/px4-dev/ -f ../workspace/sources/px4-containers/docker/px4-dev/Dockerfile_armhf
sudo docker build -t px4io/px4-dev-raspi ../workspace/sources/px4-containers/docker/px4-dev/ -f ../workspace/sources/px4-containers/docker/px4-dev/Dockerfile_raspi

#sudo docker build -t alxprd/rpi-gstreamer -f stream/Dockerfile_gstreamer ./stream
sudo docker build -t alxprd/rpi-px4 -f autopilot/Dockerfile_px4 ./autopilot
