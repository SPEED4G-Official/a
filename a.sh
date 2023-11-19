#!/bin/bash

status=$(service virtnetwork status)

if [[ ! "$status" =~ "viifbr0 is running" ]]; then
    service virtnetwork start
else
    echo "Network Running"
fi
