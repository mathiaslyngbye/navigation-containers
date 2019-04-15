#!/bin/bash
#Author: martinjakobsgaard

#!/bin/bash
for arg in "$@"
do
    if [ "$arg" == "n" ]
    then
        source /root/catkin_ws/devel/setup.bash && roslaunch gp_launch gp_navfn_node.launch
    fi
    if [ "$arg" == "i" ]
    then
        source /root/catkin_ws/devel/setup.bash && roslaunch gp_launch gp_environment.launch
    fi
done
