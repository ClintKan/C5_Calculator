#!/bin/bash

#Script that simulates a calculator
#Where a user is prompted to input two integers
#Once put in, the integers are then either added or subtracted or multiplied or divided

echo "**Welcome to our C5_Calculator**"
echo "================================"

echo "Which operation do you want to do?" #Providing arithmetic operations as prompts
echo "Press/Enter a number 1 to 4 and press enter where;"
echo "1 - Addition"
echo "2 - Subtraction"
echo "3 - Multiplication"
echo "4 - Division"
echo " "

read operation_number #inputing the selected operation
if [ $operation_number -eq 4 ]; then
  echo -e "\e[31m!! Please note that your first integer is the numerator and the second number is the denominator !!\e[0m"
fi

if [[ $operation_number -lt 1 || $operation_number -gt 4 ]]; then
  echo -e "You haven't selected a proper mathematical option"
  exit 1
fi

echo "Please enter first integer" #entering the first number
read first_number

while [[ ! $first_number =~ ^-?[0-9]+$ ]] #testing if the input was an integer
do
    echo "Not an integer. Please enter an integer"
    read first_number
done
    echo "Your first integer is $first_number"
    echo " "

echo "Please enter second integer"  #entering the second number
read second_number

while [[ ! $second_number =~ ^-?[0-9]+$ ]] #testing if the input was an integer
do
    echo "Not an integer. Please enter an integer"
    read second_number
done
    echo "Your second intger is $second_number"
    echo " "


if [ $operation_number -eq 1 ]; then #if input was addition or +
  echo "The sum of those two numbers is " $(($first_number + $second_number))

  elif [ $operation_number -eq 2 ]; then  #if input was subtraction or -
    echo "The difference between " "$first_number - $second_number = "$(($first_number - $second_number)) #first way to subtract
    
  elif [ $operation_number -eq 3 ]; then #if input was multiplication x
    echo "The product between " "$second_number x $first_number is "$(($second_number * $first_number))

  elif [ $operation_number -eq 4 ]; then  #if input was division or / #1 & #5 | #5 & #1
	if [ $second_number -ne 0 ]; then #checking if the denominator is zero
	   echo "The division between " "$first_number / $second_number = "$(($first_number / $second_number)) "with a remainder of" $(($first_number % $second_number))
	else
 	   echo "The division of "$first_number / $second_number = " is impossible"
	fi
  
fi
