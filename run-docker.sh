#!/bin/bash

xhost +local:root
IMG=ashwinvk94/base:rpi

docker run -it --user=$(id -u $USER):$(id -g $USER) --env="DISPLAY"\
        --workdir="/home/$USER" --volume="/home/$USER:/hone/$USER" \
       --volume="/etc/group:/etc/group:ro" --volume="/etc/passwd:/etc/passwd:ro" \
       --volume="/etc/shadow:/etc/shadow:ro" \
      $IMG \
      bash
