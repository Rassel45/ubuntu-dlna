#!/bin/bash
# Checks if owncast is already installed, if not it installs it
if [[ "$(docker images -q owncast:latest 2> /dev/null)" == "" ]]; then
  echo "Downloading owncast image..."
  docker pull owncast/owncast:latest
fi

#This deletes any owncast that was previously created
docker stop owncast-container 2> /dev/null
docker rm owncast-container 2> /dev/null

# Create volumes to storage the data of the owncast
docker volume create owncast-data

# Iniciar el contenedor Owncast
docker run -d -p 8080:8080 -p 1935:1935 \
  -v owncast-data:/app/data \
  -v $(pwd)/owncast-videos:/app/videos \
  --name owncast-container \
  owncast/owncast:latest