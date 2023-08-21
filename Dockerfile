# Choosing Base OS
FROM ubuntu:focal

# Configuring Time Zone
ENV TZ=America/Sao_Paulo

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Configuring Directories
WORKDIR /root/

COPY . /root/

# Installing Paparazi AUV Autopilot Dependencies
RUN apt update && apt install -y python-is-python3 gcc-arm-none-eabi gdb-multiarch git software-properties-common

# Installing Paparazzi UAV Autopilot Packages and Resources
RUN apt update && add-apt-repository -y ppa:paparazzi-uav/ppa

RUN apt update && apt install -y paparazzi-dev paparazzi-jsbsim dfu-util pprzgcs 

# Building Paparazzi UAV Autopilot
CMD ["cd", "~"]

CMD ["git", "clone", "--origin", "upstream", "https://github.com/paparazzi/paparazzi.git"]

CMD ["cd", "~/paparazzi"]

CMD ["git", "remote", "update", "-p"]

CMD ["sudo", "cp", "conf/system/udev/rules/*.rules", "/etc/udev/rules.d/"]

CMD ["sudo", "udevadm", "control", "--reload-rules"]

CMD ["make", "-j1"]
