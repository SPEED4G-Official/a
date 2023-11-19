#!/bin/bash

status=$(service virtnetwork status)

if [[ ! "$status" =~ "viifbr0 is running" ]]; then
    service virtnetwork status
else
    echo "Network Running"
fi
