#!/bin/bash
echo "리눅스가 재밌나요?(yes / no)"
read answer

case $answer in
    y | Y | yes | Yes | YES)
        echo "yes"
        ;;
    n | no | N | No | nono | nonono)
        echo "no"
        ;;
    *)
        echo "yes or no로 대답해 주세요."
        ;;
esac