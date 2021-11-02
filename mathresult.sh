#!/bin/bash


while IFS=, read -r gen grp edu lun test math reading writing; do
if [[ $gen != "gender" ]] && [[ $math > "64" ]]
then echo $gen, $edu, $math
fi
done < exams.csv
