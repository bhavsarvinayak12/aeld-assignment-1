#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Error: two arguments are required"
    exit 1
fi

writefile="$1"
writestr="$2"

write_dir=$(dirname "$writefile")

mkdir -p "$write_dir"

if ! echo "$writestr" > "$writefile"; then
    echo "Error: could not create file $writefile"
    exit 1
fi
