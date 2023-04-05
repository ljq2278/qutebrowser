#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage: $0 filename"
  exit 1
fi

filename=$1
if [ ! -f "$filename" ]; then
  echo "File $filename not found"
  exit 1
fi

while read line; do
  espeak -p 100 -s 140 "$line"
done < "$filename"

