#!/bin/bash

sudo docker run -it --name streamer --privileged -p 5600:5600/udp --rm alxprd/rpi-gstreamer 192.168.178.41 5600
