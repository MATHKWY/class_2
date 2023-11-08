#!/bin/bash

# DB.txt 파일이 존재하지 않으면 알림 출력 후 종료
if [ ! -e "DB.txt" ]; then
    echo "DB.txt 파일이 존재하지 않습니다."
    exit 1
fi

# 사용자로부터 검색할 이름 또는 전화번호의 일부분 입력 받기
search_term="$1"

# DB.txt 파일에서 이름 또는 전화번호의 일부분으로 검색하여 정보 확인
search_result=$(grep -i "$search_term.*" "DB.txt")

# 검색 결과가 없으면 알림 출력 후 종료
if [ -z "$search_result" ]; then
    echo "입력한 정보와 일치하는 팀원 정보가 없습니다."
else
    echo $search_result
fi
