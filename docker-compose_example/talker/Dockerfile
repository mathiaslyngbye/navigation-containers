FROM ros:kinetic-ros-base
# install ros tutorials packages
RUN apt-get update && apt-get install -y

RUN mkdir -p /root/catkin_ws/src

RUN /bin/bash -c '. /opt/ros/kinetic/setup.bash; cd /root/catkin_ws/; catkin_make'

COPY start_script.sh talker.sh
RUN chmod +x talker.sh

RUN /bin/bash -c "source /opt/ros/kinetic/setup.bash; source /root/catkin_ws/devel/setup.bash; cd /root/catkin_ws && /opt/ros/kinetic/bin/catkin_make && /opt/ros/kinetic/bin/catkin_make -DCMAKE_INSTALL_PREFIX=/opt/ros/kinetic install"

RUN cd /root/catkin_ws/src \
&& git clone https://github.com/martinjakobsgaard/ros_cont_test

RUN /bin/bash -c '. /opt/ros/kinetic/setup.bash; cd /root/catkin_ws/; catkin_make'

RUN rm -rf /var/lib/apt/lists/
