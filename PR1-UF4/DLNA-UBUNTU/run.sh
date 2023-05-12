#!/bin/bash
#
docker build -t docker-dlna .
#
docker run -d --network host --name dlna-server -p 1900:1900/udp -p 8200:8200/tcp -v $(pwd)/media:/home/user -v /dev/shm:/dev/shm docker-dlna
