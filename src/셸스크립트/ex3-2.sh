#!/bin/bash

read num

num1=$(echo $num | awk '{print $1}')
y=$(echo $num | awk '{print $2}')
num2=$(echo $num | awk '{print $3}')

case $y in
    "+")
        total=$(($num1 + $num2))
        ;;
    "-")
        total=$(($num1 - $num2))
        ;;
        
esac
echo $total
exit 0
