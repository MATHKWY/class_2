#!/bin/bash

# DB.txt 파일이 존재하지 않으면 파일을 생성
if [ ! -e "DB.txt" ]; then
    touch "DB.txt"
fi

# 인자로 받은 이름과 정보를 DB.txt 파일에 추가
echo "$1 $2" >> "DB.txt"
