#!/bin/bash

echo "키를 입력하세요 (센티미터 단위로): "
read height

echo "몸무게를 입력하세요 (킬로그램 단위로): "
read weight

# 키를 미터로 변환
height_m=$(echo "scale=2; $height / 100" | bc)

# BMI 계산 (체중(kg) / 키(m)^2)
bmi=$(echo "scale=2; $weight / ($height_m * $height_m)" | bc)

echo "계산된 BMI: $bmi"

# BMI를 기준으로 판별하여 출력
if (( $(echo "$bmi >= 18.5" | bc -l) )) && (( $(echo "$bmi < 23" | bc -l) )); then
    echo "정상 체중입니다."
elif (( $(echo "$bmi >= 23" | bc -l) )); then
    echo "과체중입니다."
else
    echo "저체중입니다."
fi

