#!/bin/bash

# Installs Bonjour/Zeroconf (to access the rpi as 'raspberryname.local'):
sudo apt-get update
sudo apt-get install libnss-mdns

sudo docker build -t alxprd/rpi-gstreamer -f stream/Dockerfile_gstreamer ./stream
sudo docker build -t alxprd/rpi-px4 -f autopilot/Dockerfile_px4 ./autopilot
