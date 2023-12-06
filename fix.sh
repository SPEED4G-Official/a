root_directory="/www/wwwroot"

if [ -d "$root_directory" ]; then
  cd "$root_directory"
  for dir in */; do
    if [ -d "$dir" ]; then
      cd "$dir"
      cd giaodien1/views/admin
      rm -rf user.php
      rm -rf plan-success.php
      curl -OL https://raw.githubusercontent.com/SPEED4G-Official/a/main/user.php
      curl -OL https://raw.githubusercontent.com/SPEED4G-Official/a/main/plan-success.php
      chown www:www user.php
      chown www:www plan-success.php
      cd "$root_directory"
      cd "$dir"
      cd ajaxs/admin
      curl -OL https://raw.githubusercontent.com/SPEED4G-Official/a/main/removeNoPlan.php
      curl -OL https://raw.githubusercontent.com/SPEED4G-Official/a/main/removePlanExpired.php
      chown www:www removeNoPlan.php
      chown www:www removePlanExpired.php
      cd "$root_directory"
    fi
  done
else
  echo "Thư mục gốc không tồn tại."
fi
