#/bin/bash
docker run -d --net host -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME/.Xauthority:/root/.Xauthority -e DISPLAY=$DISPLAY yogeek/mysqlworkbench mysql-workbench
