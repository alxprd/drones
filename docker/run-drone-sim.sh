#!/bin/bash

# enable access to xhost from the container
xhost +local:docker

# Run docker and open bash shell
sudo docker run -it --privileged \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-e DISPLAY=$DISPLAY \
-p 14556:14556/udp \
--name=drone-sim alxprd/drone-sim
