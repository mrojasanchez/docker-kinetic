#!/bin/bash

docker run -it \
    --name kinetic-gui \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw"  \
    docker-kinetic