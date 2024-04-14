#!/bin/bash

# Looking for catkin workspace, if not found, make one.
dir="../catkin_ws"
if [ ! -d "$dir" ]
then
    mkdir -p ../catkin_ws/src
    mkdir -p ../catkin_ws/scripts
    cp nao_installation.sh ../catkin_ws/scripts/nao_installation.sh
fi

docker run -it \
    --name kinetic-gui \
    --net=host \
    -e DISPLAY \
    -e QT_X11_NO_MITSHM=1 \
    -v /tmp/.X11-unix:/tmp/.X11-unix:rw  \
    -v $PWD/../catkin_ws:/home/vscode/catkin_ws \
    docker-kinetic