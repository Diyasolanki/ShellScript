#!/bin/bash

array=(apple banana mango papaya)

echo ${array[0]}

array+=(chikoo)

#length of an array
echo  "the size of an array is : " ${#array[@]}

#echo "${array[@]}"

for fruit in "${array[@]}"
do
	echo "$fruit"
done
