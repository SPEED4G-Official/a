#!/bin/bash

while :
do
    result=$(telnet 103.69.96.101 7801 2>&1 | grep "Connection refused")

    if [[ -n $result ]]; then
        echo "Connection refused detected. Restarting service..."
        service bt restart
    else
        echo "Connection is successful."
    fi
    sleep 1
done
