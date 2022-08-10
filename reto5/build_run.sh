#!/bin/bash

read -p "Introduce tu usuario de DockerHub: " nombre

docker build -t nodejs_bootcamp .

docker run -d -p 4000:4000 --name nodejs_cont nodejs_bootcamp

docker ps

docker logs nodejs_cont

docker tag nodejs_bootcamp $nombre/nodejs_bootcamp:v1.0.0

docker push $nombre/nodejs_bootcamp:v1.0.0