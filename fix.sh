root_directory="/www/wwwroot"

if [ -d "$root_directory" ]; then
  cd "$root_directory"
  for dir in */; do
    if [ -d "$dir" ]; then
      cd "$dir"
      rm -rf appconvert
      curl -OL https://raw.githubusercontent.com/SPEED4G-Official/a/main/appconvert.zip
      unzip appconvert.zip
      rm -rf appconvert.zip
      chown www:www appconvert
      cd "$root_directory"
    fi
  done
else
  echo "Thư mục gốc không tồn tại."
fi
