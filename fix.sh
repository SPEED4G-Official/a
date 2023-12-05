root_directory="/www/wwwroot"

if [ -d "$root_directory" ]; then
  cd "$root_directory"
  for dir in */; do
    if [ -d "$dir" ]; then
      cd "$dir"
      cd cron
      rm -rf thanhtoan.php
      curl -OL https://raw.githubusercontent.com/SPEED4G-Official/a/main/thanhtoan.php
      chown www:www thanhtoan.php
      curl -OL https://raw.githubusercontent.com/SPEED4G-Official/a/main/acb.php
      chown www:www acb.php
      curl -OL https://raw.githubusercontent.com/SPEED4G-Official/a/main/mbbank.php
      chown www:www mbbank.php
      curl -OL https://raw.githubusercontent.com/SPEED4G-Official/a/main/momo.php
      chown www:www momo.php
      curl -OL https://raw.githubusercontent.com/SPEED4G-Official/a/main/vietcombank.php
      chown www:www vietcombank.php
      curl -OL https://raw.githubusercontent.com/SPEED4G-Official/a/main/viettelpay.php
      chown www:www viettelpay.php
      curl -OL https://raw.githubusercontent.com/SPEED4G-Official/a/main/viettinbank.php
      chown www:www viettinbank.php
      cd "$root_directory"
    fi
  done
else
  echo "Thư mục gốc không tồn tại."
fi
