#!/bin/bash

# Installing Docker
sudo apt install docker.io docker-compose

# Installing Distrobox
wget -qO- https://raw.githubusercontent.com/89luca89/distrobox/main/install | sudo sh

# Creating Distrobox Image
distrobox create --root --name pprz-uav --image ubuntu:focal

# Entering Distrobox Image
distrobox enter --root pprz-uav