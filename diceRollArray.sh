#!/bin/bash -x

one=0
two=three=four=five=six=0

while [[ $one -lt 10 && $two -lt 10 && $three -lt 10 && $four -lt 10 && $five -lt 10 && $six -lt 10 ]]
do
dice[$i]="$(( (RANDOM%6) +1 ))"
	if [[ ${dice[$i]} -eq 1 ]]
	then
	one=$(($one + 1))
	elif [[ ${dice[$i]} -eq 2 ]]
	then
	two=$(($two + 1))
	elif [[ ${dice[$i]} -eq 3 ]]
	then
	three=$(($three + 1))
	elif [[ ${dice[$i]} -eq 4 ]]
	then
	four=$(($four + 1))
	elif [[ ${dice[$i]} -eq 5 ]]
	then
	five=$(($five + 1))
	else
	six=$(($six + 1))
	fi
((i++))
done
echo "first output" ${dice[*]} #initially i=0
echo "Key values are: "${!dice[@]}
#Counts of Outputs
arr=($one $two $three $four $five $six)

echo "${arr[*]}"
