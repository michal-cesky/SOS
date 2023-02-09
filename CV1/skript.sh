#!/bin/bash
for i in {1..11}
do
	echo "$i. Ahoj"
done >ukol.txt

value=$(cat ukol.txt | wc -c)
echo $value

if [ `expr $value % 2` == 0 ]
then
	echo "cislo je sude"
	exit 2
else 
	echo "cislo je liche"
	exit 3
fi
