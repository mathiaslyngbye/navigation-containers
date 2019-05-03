#!/bin/bash
kubectl delete -f pod_gp_navfn_node_remote.yaml
kubectl exec -it $(kubectl get pods -o=name | grep remote-gp | sed "s/^.\{4\}//") -c rosnode-gp -- bash -c "source root/catkin_ws/devel/setup.bash && rosnode kill global_planner"
kubectl exec -it $(kubectl get pods -o=name | grep remote-gp | sed "s/^.\{4\}//") -c rosnode-alive -- bash -c "source root/catkin_ws/devel/setup.bash && rosnode kill alive"
