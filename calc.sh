#!/bin/bash

#Script that simulates a calculator
#Where a user is prompted to input two integers
#Once put in, the integers are then either added or subtracted or multiplied or divided

echo "**Welcome to our C5_Calculator**"
echo "================================"

Err = ""

echo "Please enter first number" #entering the first number
read first_number

while [[ ! $first_number =~ ^[0-9]+$ ]] #testing if the input was an integer
do
    echo "Not a number. Try again"
    read first_number
done
    echo "Your first number is $first_number"
    echo " "

echo "Please enter second number"  #entering the second number
read second_number

while [[ ! $second_number =~ ^[0-9]+$ ]] #testing if the input was an integer
do
    echo "Not a number. Try again"
    read second_number
done
    echo "Your second number is $second_number"
    echo " "

echo "Which operation do you want to do?" #Providing arithmetic operations as prompts
echo "Press/Enter a number 1 to 4 and press enter where;"
echo "1 - Addition"
echo "2 - Subtraction"
echo "3 - Multiplication"
echo "4 - Division"
echo " "

read operation_number #inputing the selected operation

if [ $operation_number -eq 1 ]; then #if input was addition or +
  echo "The sum of those two numbers is; " $(($first_number + $second_number))

  elif [ $operation_number -eq 2 ]; then  #if input was subtraction or -
    echo "The difference between " "$first_number - $second_number = "$(($first_number - $second_number)) #first way to subtract
    echo "or"
    echo "The difference between " "$second_number - $first_number = "$(($second_number - $first_number)) #second way to subtract

  elif [ $operation_number -eq 3 ]; then #if input was multiplication x
    echo "The multiplication of those two numbers is; " $(($first_number * $second_number))

  elif [ $operation_number -eq 4 ]; then  #if input was division or /
	if [ $second_number -ne 0 ]; then #checking if the denominator is zero
	#first way to divide while giving a remainder as an integer too
	  echo "The division between " "$first_number / $second_number = "$(($first_number / $second_number)) "remainder" $(($first_number % $second_number))
	elif [ $first_number -eq 0 ]; then #checking if the denominator is zero
	#second way to divide while giving a remainder as an integer too
	   echo "The division of zeros is impossible"
	elif [ $first_number -ne 0 ]; then #checking if the denominator is zero
	   echo "The division between " "$second_number / $first_number = "$(($second_number / $first_number)) "remainder" $(($second_number % $first_number))
	else
	  #the error when the denominator is zero
	   echo "The division of between " "$second_number / $first_number is impossible - as you can't divide a number by zero "
	 fi
else
  echo "You haven't selected a proper option mathematical option"
fi
