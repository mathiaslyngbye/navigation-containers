#!/bin/bash

while [ "$1" != "" ]; do
    case $1 in
        -r | --remote )
            kubectl delete -f pod_gp_navfn_node_remote.yaml
            kubectl exec -it $(kubectl get pods -o=name | grep remote-gp | sed "s/^.\{4\}//") -c rosnode-gp -- bash -c "source root/catkin_ws/devel/setup.bash && rosnode kill global_planner"
            kubectl exec -it $(kubectl get pods -o=name | grep remote-gp | sed "s/^.\{4\}//") -c rosnode-alive -- bash -c "source root/catkin_ws/devel/setup.bash && rosnode kill alive"
            exit
            ;;
        -l | --local )
            kubectl delete -f pod_gp_navfn_node_local.yaml
            kubectl exec -it $(kubectl get pods -o=name | grep rosnode-gp | sed "s/^.\{4\}//") -c rosnode-gp -- bash -c "source root/catkin_ws/devel/setup.bash && rosnode kill global_planner"
            exit
            ;;
    esac
done
