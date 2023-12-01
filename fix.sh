root_directory="/www/wwwroot"

if [ -d "$root_directory" ]; then
  cd "$root_directory"
  for dir in */; do
    if [ -d "$dir" ]; then
      cd "$dir"
      cd giaodien1/views/admin
      rm -rf server.php
      curl -OL https://raw.githubusercontent.com/SPEED4G-Official/a/main/server.php
      chown www:www server.php
      cd "$root_directory"
      cd "$dir"
      cd ajaxs/admin
      rm -rf updateServer.php
      rm -rf getIP.php
      curl -OL https://raw.githubusercontent.com/SPEED4G-Official/a/main/getIP.php
      curl -OL https://raw.githubusercontent.com/SPEED4G-Official/a/main/updateServer.php
      cd "$root_directory"
    fi
  done
else
  echo "Thư mục gốc không tồn tại."
fi
