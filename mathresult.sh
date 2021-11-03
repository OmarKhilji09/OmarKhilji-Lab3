#!/bin/bash


while IFS=, read -r gen grp edu lun test math reading writing; do
 gen_fix=$(echo $gen | tr -d '"')
    edu_fix=$(echo $edu | tr -d '"')
    math_fix=$(echo $math | tr -d '"')

    if [[ $gen_fix != "gender" && $math_fix > 64 ]]; then 
        echo $gen_fix,"===" $edu_fix,"===" $math_fix
    fi
done < exams.csv
