#!/bin/bash

echo "Enter Docker user name:"
read my_user_name

docker build -t ${my_user_name}/node-web-app .
docker images
docker run -p 49160:8080 -d ${my_user_name}/node-web-app

# Get container ID
docker ps
my_container_id = $(docker ps | grep ${my_user_name} | awk '{print $1}')
sleep 2
# Print app output
docker logs ${my_container_id}

# Enter the container
# docker exec -it <container id> /bin/bash
sleep 2
curl -i localhost:49160

#docker stop ${my_container_id}
#docker rm ${my_container_id}
#docker rmi ${my_image_id)
