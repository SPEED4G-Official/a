root_directory="/www/wwwroot"

if [ -d "$root_directory" ]; then
  cd "$root_directory"
  for dir in */; do
    if [ -d "$dir" ]; then
      cd "$dir"
      cd giaodien1/views/client
      rm -rf profile.php
      curl -OL https://raw.githubusercontent.com/SPEED4G-Official/a/main/profile.php
      chown www:www profile.php
      cd "$root_directory"
    fi
  done
else
  echo "Thư mục gốc không tồn tại."
fi
