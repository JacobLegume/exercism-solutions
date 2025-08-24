#!/usr/bin/env bash

num=$1
len=${#num}
sum=0

for i in $(seq 0 $((len-1)))
do
    digit=${num:$i:1}
    (( sum += digit ** $len ))
done

[ $sum -eq $1 ] && echo "true" || echo "false"