#!/bin/bash

docker build -t <your username>/node-web-app .
docker images
docker run -p 49160:8080 -d <your username>/node-web-app

# Get container ID
docker ps

# Print app output
docker logs <container id>

# Enter the container
# docker exec -it <container id> /bin/bash

curl -i localhost:49160
