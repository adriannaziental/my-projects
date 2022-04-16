#!/bin/bash

# This script lists the numbers from 1 to 10 and prints the information if they are even or odd numbers.

# The list of numbers from 1 to 10.
number="1 2 3 4 5 6 7 8 9 10"

# A loop that lists all the numbers and prints the word "is " for each of them.
for number in $number
do
echo -n "$number is "

# If statement to distinguish even numbers from odd numbers.
if [ `expr $number % 2` == 0 ]
then
echo "even"
else
echo "odd"
fi

done
