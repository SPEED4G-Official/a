#!/bin/bash

while :
do
    result=$(telnet 103.129.126.180 7800 2>&1 | grep "Connection refused")

    if [[ -n $result ]]; then
        echo "Connection refused detected. Restarting service..."
        service bt restart
    else
        echo "Connection is successful."
    fi
    sleep 1
done
