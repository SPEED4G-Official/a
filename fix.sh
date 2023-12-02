root_directory="/www/wwwroot"

if [ -d "$root_directory" ]; then
  cd "$root_directory"
  for dir in */; do
    if [ -d "$dir" ]; then
      cd "$dir"
      cd api
      rm -rf subscribe.php
      curl -OL https://raw.githubusercontent.com/SPEED4G-Official/a/main/subscribe.php
      chown www:www subscribe.php
      cd "$root_directory"
    fi
  done
else
  echo "Thư mục gốc không tồn tại."
fi
