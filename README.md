# Paparazzi Distrobox

> ## Description
> This repository is dedicated for making Paparazzi UAV System executable on any Linux distribution 

<br>

> ## Distrobox Dependencies
> For Debian/Ubuntu-based distributions: ```Docker``` and ```Wget```
> <br><br>
> For other distributions (ArchLinux, Fedora): ```Podman``` and ```Curl```

<br>

> ## Distrobox Installation
> Execute: ```wget -qO- https://raw.githubusercontent.com/89luca89/distrobox/main/install | sudo sh```

<br>

> ## Distrobox Setup and Run
> Execute: ```distrobox create --name pprz-uav --image ubuntu:focal```
> <br><br>
> Execute: ```distrobox enter pprz-uav```

<br>

> ## Paparazzi UAV Dependencies
> Execute: ```sudo apt install -y python-is-python3 gcc-arm-none-eabi gdb-multiarch git software-properties-common```

<br>

> ## Paparazzi UAV Installation
> Execute: ```sudo add-apt-repository -y ppa:paparazzi-uav/ppa```
> <br><br>
> Execute: ```sudo apt update```
> <br><br>
> Execute: ```sudo apt install -f -y paparazzi-dev paparazzi-jsbsim dfu-util pprzgcs```
