root_directory="/www/wwwroot"

if [ -d "$root_directory" ]; then
  cd "$root_directory"
  for dir in */; do
    if [ -d "$dir" ]; then
      cd "$dir"
      cd giaodien1/views/client
      rm -rf knowledgebase.php
      curl -OL https://raw.githubusercontent.com/SPEED4G-Official/a/main/knowledgebase.php
      chown www:www knowledgebase.php
      cd "$root_directory"
    fi
  done
else
  echo "Thư mục gốc không tồn tại."
fi
