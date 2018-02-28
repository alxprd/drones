#!/bin/bash

#sudo docker run -it --name autopilot --privileged -p 5605:5605/udp --rm alxprd/rpi-px4
sudo docker run -it --name autopilot --privileged -p 5605:5605/udp --rm px4io/px4-dev-raspi
