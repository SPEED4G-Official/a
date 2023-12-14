if core-server status | grep -q "level=error"; then
    echo "Có lỗi trong core-server status"
else
    echo "Không có lỗi trong core-server status"
fi
