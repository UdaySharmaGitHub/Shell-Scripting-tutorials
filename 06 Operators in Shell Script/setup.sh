#!/bin/bash

# =====================================
# Script: operators_demo.sh
# Description: Arithmetic & Relational Operators Demo
# =====================================

# Taking input
read -p "Enter first number: " a
read -p "Enter second number: " b

echo "---------------------------------"
echo "Arithmetic Operations"
echo "---------------------------------"

echo "Addition: $((a + b))"
echo "Subtraction: $((a - b))"
echo "Multiplication: $((a * b))"
echo "Division: $((a / b))"
echo "Modulus: $((a % b))"

echo "---------------------------------"
echo "Increment / Decrement"
echo "---------------------------------"

((a++))
echo "After increment, a = $a"

((b--))
echo "After decrement, b = $b"

echo "---------------------------------"
echo "Relational Operations"
echo "---------------------------------"

if [ $a -eq $b ]
then
  echo "a is equal to b"
fi

if [ $a -ne $b ]
then
  echo "a is not equal to b"
fi

if [ $a -gt $b ]
then
  echo "a is greater than b"
fi

if [ $a -lt $b ]
then
  echo "a is less than b"
fi

if [ $a -ge $b ]
then
  echo "a is greater than or equal to b"
fi

if [ $a -le $b ]
then
  echo "a is less than or equal to b"
fi

echo "---------------------------------"
echo "Script Execution Completed"