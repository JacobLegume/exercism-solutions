#!/usr/bin/env bash

set -e
input=$1

[ "$input" = "total" ] && echo "2^64-1" | bc && exit 0
[ "$input" -lt 1 ] || [ "$input" -gt 64 ] && echo "Error: invalid input" && exit 1
echo "2^$(("$input" - 1))" | bc