#!/bin/sh

app_logs=$ALLAPPLICATIONLOGS

for app_dir in $(find "$app_logs" -type d -maxdepth 1 -mindepth 1); do
  echo "${app_dir}" >> found-directory.txt

done
