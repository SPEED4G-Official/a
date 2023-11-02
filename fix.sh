root_directory="/www/wwwroot"

if [ -d "$root_directory" ]; then
  cd "$root_directory"
  for dir in */; do
    if [ -d "$dir" ]; then
      cd "$dir"
      cd public/theme/v2board/assets
      rm -rf compoments.js
      curl -OL https://raw.githubusercontent.com/SPEED4G-Official/a/main/compoments.js
      chown www:www compoments.js
      cd "$root_directory"
    fi
  done
else
  echo "Thư mục gốc không tồn tại."
fi
