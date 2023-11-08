#!/bin/bash
# 사용자로부터 폴더 이름 입력 받기
folder_name="$1"

# 입력된 폴더가 존재하는지 확인하고 없다면 폴더 생성
if [ ! -d "$folder_name" ]; then
    mkdir "$folder_name"
fi

# 폴더 안에 5개의 파일 생성
cd "$folder_name"
for i in {0..4}; do
    touch "file$i.txt"
done

# 파일을 압축
zip "$folder_name.zip" *.txt

# 새로운 폴더 생성하여 압축 해제
mkdir extracted_folder
unzip "$folder_name.zip" -d extracted_folder

