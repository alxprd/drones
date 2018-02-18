#!/bin/bash

cd ../../

cd gazebo/build
sudo make uninstall
cd ../../

cd sdformat/build
sudo make uninstall
cd ../../

cd ign-transport/build
sudo make uninstall
cd ../../

cd ign-msgs/build
sudo make uninstall
cd ../../

cd ign-tools/build
sudo make uninstall
cd ../../

cd ign-fuel-tools/build
sudo make uninstall
cd ../../

cd ign-common/build
sudo make uninstall
cd ../../

cd ign-math/build
sudo make uninstall
cd ../../

cd ign-cmake/build
sudo make uninstall
cd ../../

cd drones/gazebo
