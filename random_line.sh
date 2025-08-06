#!/bin/bash

filename="data.txt"
total_lines=$(wc -l < "$filename")
random_line=$(( (RANDOM % total_lines) + 1 ))
sed -n "${random_line}p" "$filename"
