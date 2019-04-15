FROM ros:kinetic-ros-base
# install ros tutorials packages
RUN apt-get update && apt-get install -y \
#ros-kinetic-joy \
#ros-kinetic-teleop-twist-joy \
#ros-kinetic-teleop-twist-keyboard \
ros-kinetic-laser-proc \
ros-kinetic-rgbd-launch \
ros-kinetic-depthimage-to-laserscan \
ros-kinetic-rosserial-arduino \
ros-kinetic-rosserial-python \
ros-kinetic-rosserial-server \
ros-kinetic-rosserial-client \
ros-kinetic-rosserial-msgs \
ros-kinetic-amcl \
ros-kinetic-map-server \
ros-kinetic-move-base \
ros-kinetic-urdf \
ros-kinetic-xacro \
ros-kinetic-compressed-image-transport \
#ros-kinetic-rqt-image-view \
#ros-kinetic-gmapping \
ros-kinetic-navigation \
ros-kinetic-tf2-geometry-msgs

RUN mkdir -p /root/catkin_ws/src

RUN /bin/bash -c '. /opt/ros/kinetic/setup.bash; cd /root/catkin_ws/; catkin_make'

COPY start_script.sh start_script.sh
RUN chmod +x start_script.sh

RUN /bin/bash -c "source /opt/ros/kinetic/setup.bash; source /root/catkin_ws/devel/setup.bash; cd /root/catkin_ws && /opt/ros/kinetic/bin/catkin_make && /opt/ros/kinetic/bin/catkin_make -DCMAKE_INSTALL_PREFIX=/opt/ros/kinetic install"

RUN cd /root/catkin_ws/src \
&& git clone https://github.com/mathiaslyngbye/navigation

RUN /bin/bash -c '. /opt/ros/kinetic/setup.bash; cd /root/catkin_ws/; catkin_make'

RUN rm -rf /var/lib/apt/lists/
