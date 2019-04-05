#!/bin/bash

#Author: martinjakobsgaard

cd /root/catkin_ws \
catkin_make \
source devel/setup.bash \
cd /root/catkin_ws/src \
git clone https://github.com/martinjakobsgaard/ros_cont_test \
cd /root/catkin_ws \
catkin_make
