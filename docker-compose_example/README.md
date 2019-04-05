xhost +local:root
sudo docker run -it --env="DISPLAY" --env="QT_X11_NO_MITSHM=1" --volume="/tmp/.X11-unix:/tmp/.X11-uni
x:rw" ros:turtlebot3_fake_node /usr/local/bin/start_simu.sh




source /opt/ros/<distro>/setup.bash
