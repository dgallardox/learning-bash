#!/bin/bash

## 1. LOOPS

# WHILE LOOP
counter=1
# -le means "less than or equal to"
while [ $counter -le 10 ]
do
  echo "$counter"
  ((counter++))
done

echo "All done with while loop"

# FOR LOOP
names="Diego Jonas Gallardo"
for name in $names
do
  echo $name
done

echo "All done with for loop"

# RANGE LOOP
for value in {1..5}
do
  echo $value
done

echo "All done with range loop"

## 2. VARIABLES

# Setting and Reading
variable="variable"
echo "I am reading a $variable"

# Setting local variables
# try uncommenting the global $sum and running again
calculate_sum(){
  local a=5
  local b=5
  local sum=$((a + b))
}
calculate_sum

if [ -z $sum ]; then
  echo "Cannot find value of \$sum because it is a local variable"
else
  echo "$sum"
fi

## 3. CONDITIONALS
number=10
if [ $number -le 20 ]; then
  echo "Number is less than"
fi

logged_in=false
if [ $logged_in ]; then
  echo "User is logged in"
else
  echo "User is not logged in"
fi

age=26
if [ $age -lt 25 ]; then
  echo "User is less than 25"
elif [ $age -eq 25 ]; then
  echo "User is 25"
else
  echo "User older than 25"
fi

## 3. FUNCTIONS

# First way to Declare a Function
add_numbers() {
  a="$1"
  b="$2"
  c=$(($1 + $2))
  echo "The sum of $a and $b is $c"
}
# notice how args are passed
add_numbers 4 6

# Second way to Declare a Function
function my_name() {
  first="$1"
  last="$2"
  echo "Your full name is $first $last"
}
my_name Diego Gallardo

success_function() {
  return 0
}

success_function
echo "$?"

failure_function() {
  return 1
}

failure_function
echo "$?"
