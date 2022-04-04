#!/bin/bash -x

i=1
One=0
Two=0
Three=0
Four=0
Five=0
Six=0

while [ $One -lt 10 -a $Two -lt 10 -a $Three -lt 10 -a $Four -lt 10 -a $Five -lt 10 -a $Six -lt 10 ]
do
declare -A diceOutputs
dice[$i]="$(( (RANDOM%6) +1 ))"
	if [ ${dice[$i]} -eq 1 ]
	then
		echo "One"
		One=$(($One + 1))
	elif [ ${dice[$i]} -eq 2 ]
        then
        	echo "Two"
        	Two=$(($Two + 1))
	elif [ ${dice[$i]} -eq 3 ]
        then
                echo "Three"
                Three=$(($Three + 1))
	elif [ ${dice[$i]} -eq 4 ]
        then
                echo "Four"
                Four=$(($Four + 1))
	elif [ ${dice[$i]} -eq 5 ]
        then
                echo "Five"
                Two=$(($Five + 1))
	elif [ ${dice[$i]} -eq 6 ]
        then
                echo "Six"
                Two=$(($Two + 1))
	else
	echo "Incorrect Code"
	fi
((i++))
done
echo "Dice outputs ${dice[@]}"
echo "Number of outputs as one's are $One, two's are $Two, three's are $Three, four's are $Four, five's are $Five and six's are $Six"
