#!/bin/bash

echo "stopping all containers..." 
docker stop $(docker ps -a -q)

echo "removing all containers..."
docker rm $(docker ps -a -q)

echo "removing all <none> images..."
docker rmi $(docker images -f "dangling=true" -q)

echo "done!"

exit


