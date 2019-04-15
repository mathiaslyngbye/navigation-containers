#!/bin/bash

#Author: martinjakobsgaard

cd /root/catkin_ws
source devel/setup.bash
roslaunch gp_launch gp_navfn_node
