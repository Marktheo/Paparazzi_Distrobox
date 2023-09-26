# Paparazzi Distrobox

## Description
    This repository is dedicated for making Paparazzi UAV System executable on any Linux distro.

<br>

## Distrobox Dependencies
    For Debian/Ubuntu-based distributions: ```Docker``` and ```Wget```
    
    For other distributions (ArchLinux, Fedora): ```Podman``` and ```Curl```

<br>

> ## Distrobox Installation
    wget -qO- https://raw.githubusercontent.com/89luca89/distrobox/main/install | sudo sh
    
    curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sudo sh

<br>

> ## Distrobox Setup and Run
    distrobox create --name pprz --image ubuntu:20.04
    
    distrobox enter pprz

<br>

> ## Paparazzi UAV Build
    Clone the repository and execute the shell script

<br>

> ## Paparazzi UAV Launch
    ./paparazzi
