#!/bin/bash

root_directory="/path/to/your/root/directory"

if [ -d "$root_directory" ]; then
  cd "$root_directory"
  for dir in */; do
    if [ -d "$dir" ]; then
      cd "$dir"
      touch example.txt
      cd ..
    fi
  done
else
  echo "Thư mục gốc không tồn tại."
fi

