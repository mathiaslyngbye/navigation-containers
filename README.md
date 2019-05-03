# Navigation-containers
This repository complements the "navigation" fork. It contains various container files assisting in establishing a Kubernetes network.

## Killing containers.

Run the following commands to kill and delete all running containers, and delete images.
``` bash
docker kill $(docker ps -q) \
docker rm $(docker ps -a -q) \
docker rmi $(docker images -q)
```
Alternately run the included docker_flush.bash script, which effectively does the same thing.

## Building container images

To build the various images located in "./navigation_stack", run the following command. Note that the image names are widely used and should comply with the name of its containing directory. 
``` bash
sudo docker build -t <image name> .
```

## Google
### Installing the cluster on the robot
Download and run install_k8s_on_robot.sh. This script will take a few minutes as it downloads and installs the dependencies of the Kubernetes cluster.

``` bash
curl https://raw.githubusercontent.com/googlecloudrobotics/core/master/src/bootstrap/robot/install_k8s_on_robot.sh | bash
```

### Kubernetes deployment
Deployment is based on the YAML files in the "./google-cloud" directory.
Use "kubectl" to apply it to your cluster.
``` bash
kubectl apply -f <YAML file name>
```
Live monitor kubernetes deployments.
``` bash
watch kubectl get pods
```
Use "kubectl" to delete deployments.
``` bash
kubectl delete -f <YAML file name>
```

## For lack of a better place to save this
``` bash
kubectl exec -it $(kubectl get pods -o=name | grep rosnode-gp | sed "s/^.\{4\}//") -- bash -c "source root/catkin_ws/devel/setup.bash && rosnode kill global_planner" && kubectl delete -f pod_gp_navfn_node_local.yaml 

```
