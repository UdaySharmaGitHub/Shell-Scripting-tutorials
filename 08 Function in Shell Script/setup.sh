#!/bin/bash
echo "1. Function Definition
greet() {
•	greet → function name
•	() → indicates it's a function
 
2. Function Body
echo "Hello $1"
•	$1 → first argument passed to function
•	Works like function parameters
 
3. Closing the Function
}
 
4. Function Call
greet Desmond
•	Calls function greet
•	Passes "Desmond" as argument
"
greet() {
  echo "Hello My First Name:$1 and My Last Name:$2"
}
greet "Uday" "Sharma"

####################################################################################
echo "✅ Example with Multiple Arguments"
add(){
    sum=$(( $1 + $2 ))
    echo "The sum of $1 and $2 is: $sum"
}

add 5 10


####################################################################################
echo "Returning Values from Functions"

echo "✅ Method 1: Using echo (Most Common)"
get_sum() {
  echo $(($1 + $2))
}
result=$(get_sum 5 10)
echo "Result is $result"

echo "✅ Method 2: Using return (Limited to integers)"
get_sum_return() {
    return $(($1 + $2))
}
get_sum_return 5 3
result=$?
echo "Result is $result"


####################################################################################
echo "🔹 Local vs Global Variables"

echo "Global Variable (Default)"
name="Devops"
greet_global() {
  echo "Hello $name"
}
greet_global

echo "Local Variable (Using local keyword)"
greet_local() {
  local name="Shell Scripting"
  echo "Hello $name"
}
greet_local

echo "Global variable name is still: $name"

####################################################################################
echo "Function with Conditional Logic"
check_age() {
  if [ $1 -gt 18 ]
  then
    echo "Adult"
  else
    echo "Minor"
  fi
}
read -p "Enter your age: " age
check_age $age

####################################################################################
echo "✅ Example: Factorial using Recursion"
factorial() {
  if [ $1 -le 1 ]; then
    echo 1
  else
    local prev=$(factorial $(( $1 - 1 )))
    echo $(( $1 * prev ))
  fi
}
read -p "Enter a number to calculate factorial: " num
result=$(factorial $num)
echo "Factorial of $num is: $result"

####################################################################################
echo "🔹 Function with Loops"
print_numbers() {
  for i in 1 2 3
  do
    echo $i
  done
}
print_numbers

#################################################################################### 
echo "🔹 Function Inside Another Function"
hello() {
  echo "Hello"
}
greet() {
  hello
  echo "World"
}
greet


exit $?



