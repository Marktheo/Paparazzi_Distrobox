#!/bin/bash

# Installing Paparazzi UAV Dependencies
sudo apt install -y python-is-python3 gcc-arm-none-eabi gdb-multiarch git software-properties-common

# Adding Paparazzi UAV System Respository
sudo add-apt-repository -y ppa:paparazzi-uav/ppa

# Updating System Repositories
sudo apt update

# Installing Paparazzi UAV System
sudo apt install -f -y paparazzi-dev paparazzi-jsbsim dfu-util pprzgcs

# Changing to Home Directory
cd ~

# Cloning Paparazzi UAV GitHub Repository
git clone --origin upstream https://github.com/paparazzi/paparazzi.git

# Changing to Paparazzi UAV Cloned Repository
cd ~/paparazzi

# Checking for Updates 
git remote update -p

# Copying Udev Rules from Root system
sudo cp conf/system/udev/rules/*.rules /etc/udev/rules.d/

# Reloading Udev Rules 
sudo udevadm control --reload-rules

# Building the Entire System
make -j1