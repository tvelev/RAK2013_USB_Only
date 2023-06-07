#!/bin/bash

# Stop on the first sign of trouble
set -e

if [ $UID != 0 ]; then
    echo "ERROR: Operation not permitted. Forgot sudo?"
    exit 1
fi


main_dir="/usr/local/rak"
sub_dirs=(
  "/usr/local/rak/lte"
  "/usr/local/rak/bin"
)

# Check if main directory exists
if [[ -d "$main_dir" ]]; then
  echo "Main directory already exists. Removing..."
  rm -rf "$main_dir"
fi

# Create main directory and subdirectories
mkdir -p "$main_dir"
for dir in "${sub_dirs[@]}"; do
  mkdir -p "$dir"
done

    cp ppp-creator.sh /usr/local/rak/lte/
    cp rak-pppd.service /lib/systemd/system
    cp pppd.sh /usr/local/rak/bin/
    cp ppp.sh /usr/local/rak/bin/

        gcc lte_test.c -o lte_test

    echo "Install LTE module success!\n"
    sleep 2

