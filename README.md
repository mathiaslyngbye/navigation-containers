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
