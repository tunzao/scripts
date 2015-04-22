#!/usr/bin/env bash
# kill 占用某个端口的进程
if [ $# != 1 ]
then
    echo "usage: findkill.sh port_number"
else
    netstat -lnp | grep :$1 | awk '{print $7}' | awk -F/ '{print $1}' | xargs kill -9
fi
