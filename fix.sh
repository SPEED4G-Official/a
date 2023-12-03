root_directory="/www/wwwroot"

if [ -d "$root_directory" ]; then
  cd "$root_directory"
  for dir in */; do
    if [ -d "$dir" ]; then
      cd "$dir"
      cd ajaxs/client
      rm -rf create_order.php
      curl -OL https://raw.githubusercontent.com/SPEED4G-Official/a/main/create_order.php
      chown www:www create_order.php
      cd "$root_directory"
    fi
  done
else
  echo "Thư mục gốc không tồn tại."
fi
