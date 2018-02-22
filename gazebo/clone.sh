#!/bin/bash

sudo apt-get remove '.*sdformat.*' '.*ignition-.*'

sudo apt-get install build-essential \
                     cmake \
                     pkg-config \
                     mercurial \
                     python \
                     libfreeimage-dev \
                     libtinyxml2-dev \
                     uuid-dev \
                     libgts-dev \
                     libavdevice-dev \
                     libavformat-dev \
                     libavcodec-dev \
                     libswscale-dev \
                     libavutil-dev \
                     libprotoc-dev \
                     libprotobuf-dev \
                     protobuf-compiler \
                     libboost-system-dev \
                     libtinyxml-dev \
                     libxml2-utils \
                     ruby-dev \
                     ruby \
                     libzip-dev \
                     libjsoncpp-dev \
                     libcurl4-openssl-dev \
                     libyaml-dev \
                     libzmq3-dev

# Gazebo optional dependencies:
sudo apt-get install libhdf5-serial-dev
sudo apt-get install xsltproc
sudo apt-get install ruby-ronn

# Main repository
sudo apt-add-repository ppa:dartsim
sudo apt-get update
sudo apt-get install libdart6-dev

# Optional DART utilities
sudo apt-get install libdart6-utils-urdf-dev

cd ../../

mkdir ign-cmake
cd ign-cmake
hg clone https://bitbucket.org/ignitionrobotics/ign-cmake .
mkdir build
cd ../

mkdir ign-math
cd ign-math
hg clone https://bitbucket.org/ignitionrobotics/ign-math .
mkdir build
cd ../

mkdir ign-common
cd ign-common
hg clone https://bitbucket.org/ignitionrobotics/ign-common .
mkdir build
cd ../

mkdir ign-fuel-tools
cd ign-fuel-tools
hg clone https://bitbucket.org/ignitionrobotics/ign-fuel-tools .
mkdir build
cd ../

mkdir ign-tools
cd ign-tools
hg clone https://bitbucket.org/ignitionrobotics/ign-tools .
mkdir build
cd ../

mkdir ign-msgs
cd ign-msgs
hg clone https://bitbucket.org/ignitionrobotics/ign-msgs .
mkdir build
cd ../

mkdir ign-transport
cd ign-transport
hg clone https://bitbucket.org/ignitionrobotics/ign-transport .
mkdir build
cd ../

mkdir sdformat
cd sdformat
hg clone https://bitbucket.org/osrf/sdformat .
mkdir build
cd ../

cd ../

mkdir gazebo
cd gazebo
hg clone https://bitbucket.org/osrf/gazebo .
mkdir build
cd ../

cd drones/gazebo
