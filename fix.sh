root_directory="/www/wwwroot"

if [ -d "$root_directory" ]; then
  cd "$root_directory"
  for dir in */; do
    if [ -d "$dir" ]; then
      cd "$dir"
      rm -rf .htaccess
      curl -OL https://raw.githubusercontent.com/SPEED4G-Official/a/main/.htaccess
      chown www:www .htaccess
      cd "$root_directory"
    fi
  done
else
  echo "Thư mục gốc không tồn tại."
fi
