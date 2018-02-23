#!/bin/bash

sudo docker run -it --name autopilot --privileged -p 5605:5605/udp --rm alxprd/rpi-px4 192.168.178.41 5605
