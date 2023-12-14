if core-server status | grep -q "level=error"; then
    core-server restart
    echo "Khởi Động Lại Thành Công"
else
    echo "Không Tìm Thấy Lỗi"
fi
