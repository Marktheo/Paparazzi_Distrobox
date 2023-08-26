# Paparazzi Distrobox

> ## Description
> This repository is dedicated for making Paparazzi UAV System executable on any Linux distribution.

<br>

> ## Distrobox Dependencies
> - For Debian/Ubuntu-based distributions: ```Docker``` and ```Wget```
> <br><br>
> - For other distributions (ArchLinux, Fedora): ```Podman``` and ```Curl```

<br>

> ## Distrobox Installation
> - Execute: ```wget -qO- https://raw.githubusercontent.com/89luca89/distrobox/main/install | sudo sh```

<br>

> ## Distrobox Setup and Run
> - Execute: ```distrobox create --name pprz-uav --image ubuntu:focal```
> <br><br>
> - Execute: ```distrobox enter pprz-uav```

<br>

> ## Paparazzi UAV Dependencies
> - Execute: ```sudo apt install -y python-is-python3 gcc-arm-none-eabi gdb-multiarch git software-properties-common```

<br>

> ## Paparazzi UAV Installation
> - Execute: ```sudo add-apt-repository -y ppa:paparazzi-uav/ppa```
> <br><br>
> - Execute: ```sudo apt update```
> <br><br>
> - Execute: ```sudo apt install -f -y paparazzi-dev paparazzi-jsbsim dfu-util pprzgcs```

<br>

> ## Paparazzi UAV Setup
> Choose a folder to clone the system repository. 
> - Execute: ```git clone --origin upstream https://github.com/paparazzi/paparazzi.git```
> <br><br>
> - Execute: ```cd ./paparazzi```
> <br><br>
> - Execute: ```git remote update -p```
> <br><br>
> - Execute: ```sudo cp conf/system/udev/rules/*.rules /etc/udev/rules.d/```
> <br><br>
> - Execute: ```sudo udevadm control --reload-rules```
> <br><br>
> - Execute: ```make -j1```

<br>

> ## Paparazzi UAV Launch
> Still in the cloned repository,
> - Execute: ```./paparazzi```
