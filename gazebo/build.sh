#!/bin/bash

cd ../../

cd ign-cmake
# Update branch?
cd build
cmake ../
make -j4
sudo make install
cd ../../

cd ign-math
hg up ign-math4
cd build
cmake ../
make -j4
sudo make install
cd ../../

cd ign-common
hg up ign-common1
cd build
cmake ../
make -j4
sudo make install
cd ../../

cd ign-fuel-tools
hg up ign-fuel-tools1
cd build
cmake ../
make -j4
sudo make install
cd ../../

cd ign-tools
# Update branch?
cd build
cmake ../
make -j4
sudo make install
cd ../../

cd ign-msgs
hg up ign-msgs1
cd build
cmake ../
make -j4
sudo make install
cd ../../

cd ign-transport
hg up ign-transport4
cd build
cmake ../
make -j4
sudo make install
cd ../../

cd sdformat
hg up sdf6
cd build
cmake ../
make -j4
sudo make install
cd ../../

cd gazebo
hg up gazebo9
cd build
cmake ../
make -j4
sudo make install
cd ../../

cd drones/gazebo
