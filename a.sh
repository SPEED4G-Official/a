#!/bin/bash

status=$(service virtnetwork status)

if [[ ! "$status" =~ "viifbr0 is running" ]]; then
    echo "virtnetwork is not running viifbr0. Starting it..."
    
    # Thực hiện lệnh khác ở đây, ví dụ:
    # systemctl start virtnetwork

    # Nếu bạn sử dụng service thay vì systemctl:
    # service virtnetwork start

    echo "virtnetwork started."
else
    echo "Network Running"
fi
