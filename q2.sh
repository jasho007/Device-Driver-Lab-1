#!/bin/bash


#Exercise 2: Write a shell program with at least 30 lines excluding comments. It can be ANY shell program.
#CED17I034
#this is only for Integers 
#echo for printing the msg  -e to consider escape sequences
echo -e "Welcome to INTEGER Bash Calculator \n+ == ADDITION\n- == SUBTRACTION\nx == MULTIPLICATION\n/ == DIVISION\nq == QUIT\nINPUT EXAMPLE 1 + 2(1 sapce + space 2)\n"

#function for add
add(){
	sum=`expr $1 + $2`
	echo -e "=$sum \n"
}
#function for subtract
sub(){
	res1=`expr $1 - $2`
	echo -e "=$res1\n"
}
#function for multiplication
mult(){
	((res2=$1*$2))
	echo -e "=$res2\n"
}
#function for division
div(){
	num1=$1
	num2=$2
	ans=$((num1 / num2))
	echo -e "=$ans\n"
}

while [ 1 ]
do
read EXPRESSION

IFS=' ' #setting comma as delimiter  
read -a strarr <<<"$EXPRESSION" #reading str as an array as tokens separated by IFS  

#comparing the second array element lo find out +,-,x,/
if [[ ${strarr[1]} = + ]]
then
add ${strarr[0]} ${strarr[2]}
elif [[ ${strarr[1]} = - ]]
then
sub ${strarr[0]} ${strarr[2]}
elif [[ ${strarr[1]} = x ]]
then
mult ${strarr[0]} ${strarr[2]}
elif [[ ${strarr[1]} = / ]]
then
	if [[ ${strarr[2]} -eq 0 ]] #checking if the denominator is zero or not 
	then
	echo -e "invalid input\n"
	else
	div ${strarr[0]} ${strarr[2]}
	fi
elif [[ ${strarr[0]} = q ]] #for quit
then
break
else
	echo -e "invalid input refer example \n"
fi



done
