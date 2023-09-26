# Paparazzi Distrobox

## Description
    This repository is dedicated for making Paparazzi UAV System executable on any Linux distro.

## Distrobox Dependencies
    For Debian/Ubuntu-based distributions: ```Docker``` and ```Wget```
    
    For other distributions (ArchLinux, Fedora): ```Podman``` and ```Curl```

## Distrobox Installation [Wget]
    wget -qO- https://raw.githubusercontent.com/89luca89/distrobox/main/install | sudo sh

## Distrobox Installation [Curl]
    curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sudo sh

## Distrobox Setup
    distrobox create --name pprz --image ubuntu:20.04

## Distrobox Run
    distrobox enter pprz

## Paparazzi UAV Build
    Clone the repository and execute the shell script inside the distrobox image.

## Paparazzi UAV Launch
    ./paparazzi
