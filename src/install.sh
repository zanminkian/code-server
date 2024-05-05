#!/usr/bin/env zsh

TARGET_DIR=$(cd "$(dirname "$0")"; pwd)/installers

for file in $TARGET_DIR/*.installer.sh; do
  if [ -f $file ] && [ -x $file ]; then
    echo "[$(arch)]executing: $file"
    $file || exit 1
    echo "[$(arch)]executed: $file"
  fi
done
