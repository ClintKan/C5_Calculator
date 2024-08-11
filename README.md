# CALCULATOR SIMULATION

## _This is a calculator simulation assignment_

This was an assignment to the KuraLabs C5 class - with the synopsis of the task being;


> To create a calculator in bash that takes and operates on two integers and operates on
> them by either addition, subtraction, multiplication or division - all using if, else 
> and/or elif loops, and most iimportantly properly handling errors for the sake of the
> a good customer usage experience.


## Overview
The is a simple bash-based command-line calculator that allows users to perform basic arithmetic 
operations: addition, subtraction, multiplication, and division. The script prompts the user to 
input two integers and select an operation to perform on these numbers. Integers are either 
negative or positive whole numbers.


## How It Works
With a simple welcome part, it prompts the user to choose one of four arithmetic operations by
entering a number (1-4):


* 1 for Addition - Adds the two integers.
* 2 for Subtraction - Subtracts the second integer from the first.
* 3 for Multiplication - Multiplies the two integers.
* 4 for Division - Divides the first integer by the second, also providing the remainder if applicable.

### Special Considerations:
In the case of mathematical operation 4, division, because dividing by zero is undefined, the script 
checks if the second integer (the denominator) is zero to prevent division by zero. And if the 
denominator is zero, the script notifies the user that the division is impossible.


## Input Validation & Notices :

_This is done at 3 points;_

1. The script checks if the user's input to the operation selection is valid for the mathematical operands 
(between 1 and 4).

```sh
if [[ $operation_number -lt 1 || $operation_number -gt 4 ]]; then
  echo -e "You haven't selected a proper mathematical option"
  exit 1
fi
```
 
2. The script checks if the user's input of the two integers to be operated on, are indeed integers.

```sh
[[ ! $first_number =~ ^-?[0-9]+$ ]]
```

3. The user is notified if option 4 (the division operand) is selected that the second number has to be the denominator.

```sh
if [ $operation_number -eq 4 ]; then
  echo -e "\e[31m!! Please note that your first integer is the numerator and the second number is the denominator !!\e[0m"
fi
```


## Error Handling

**Invalid Operation:** If the user inputs a number outside the range of 1-4 for the operation, the script will exit with an error message.
**Invalid Input:** If the user inputs a non-integer value for either of the numbers, the script will prompt them to enter a valid integer.

**Exit Codes**
- 0: Successful execution.
- 1: An invalid operation was selected.
