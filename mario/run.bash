#!/usr/bin/env bash

#! настройка сети
xhost +local:docker || true

#! запуск docker-контейнера с перечнем аргументов
docker run  -ti --rm \
            -e "DISPLAY" \
            -e "QT_X11_NO_MITSHM=1" \
            -v "/tmp/.X11-unix:/tmp/.X11-unix:rw" \
            --volume="$HOME/.Xauthority:/root/.Xauthority:rw" \
            -e XAUTHORITY \
            -v "/dev:/dev" \
            --net=host \
            --privileged \
            --name mymario_image mymario_image \
            bash
