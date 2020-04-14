# v2ray-docker
v2ray vpn host in docker

## Build v2ray docker image with image name "v2ray-docker"
```bat
sudo docker build --no-cache -t v2ray-docker .
```

## Create docker container using image "v2ray-docker" using nginx-net network
```bat
sudo docker run --name v2ray-container --network nginx-net -d v2ray-docker
```

## Stop and Remove existing docker container
```bat
sudo docker container stop v2ray-container
sudo docker container rm v2ray-container
```

### Execute command inside container
```bat
sudo docker exec -it v2ray-container echo "I'm inside the container!"
sudo docker exec -it v2ray-container v2ray -version
```

### Kill and Deploy command in sequency
```bat
sudo docker container stop v2ray-container
sudo docker container rm v2ray-container
sudo docker build --no-cache -t v2ray-docker .
sudo docker run --name v2ray-container --network nginx-net -d v2ray-docker
```