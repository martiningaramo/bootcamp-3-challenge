#!/bin/bash

read -p "Introduce tu usuario de DockerHub: " nombre

docker build -t nodejs_bootcamp_mingaramo .

docker run -d -p 4000:4000 --name nodejs_cont nodejs_bootcamp_mingaramo

docker ps

docker logs nodejs_cont

docker tag nodejs_bootcamp_mingaramo $nombre/nodejs_bootcamp_mingaramo:v1.0.0

docker push $nombre/nodejs_bootcamp_mingaramo:v1.0.0