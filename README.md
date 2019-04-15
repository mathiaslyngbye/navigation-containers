Hello...
This is to please MalyGod

Kill all running containers:
``` bash
docker kill $(docker ps -q)
```

Delete all stopped containers:
``` bash
docker rm $(docker ps -a -q)
```

Delete all images:
``` bash
docker rmi $(docker images -q)
```
Alternately run the included docker_flush.bash script.
