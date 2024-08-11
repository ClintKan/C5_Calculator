# CALCULATOR SIMULATION

## _This is a calculator simulation assignment_

This was an assignment to the KuraLabs C5 class - with the synopsis of the task being;


> To create a calculator in bash that takes and operates on two integers and operates on
> them by either addition, subtraction, multiplication or division - all using if, else 
> and/or elif loops, and most iimportantly properly handling errors for the sake of the
> a good customer usage experience.

#

## Overview
The is a simple bash-based command-line calculator that allows users to perform basic arithmetic operations: addition, subtraction, multiplication, and division. The script prompts the user to input two integers and select an operation to perform on these numbers. Integers are either negative or positive whole numbers.


## How It Works
With a simple welcome part, it prompts the user to choose one of four arithmetic operations by entering a number (1-4):
1 for Addition
2 for Subtraction
3 for Multiplication
4 for Division

## Input Validation:

The script checks if the user's input to the operation selection is valid (between 1 and 4).

```sh
if [[ $operation_number -lt 1 || $operation_number -gt 4 ]]; then
  echo -e "You haven't selected a proper mathematical option"
  exit 1
fi
```

At the same time notifying a user if option 4 (the division operand) is selected that the second number has to be the denominator.
```sh
if [ $operation_number -eq 4 ]; then
  echo -e "\e[31m!! Please note that your first integer is the numerator and the second number is the denominator !!\e[0m"
fi
```
