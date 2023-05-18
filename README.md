# Bash / Shell

## Criteria:

- Understand loops, variables, conditionals, functions
- Create a portfolio project
- Write a blog article about what you learned

### SHEBANG

Used for specifying the interpreter for executing a shell script. By including this shebang at the beginning of a shell script, you ensure that the script is executed correctly with the appropriate interpreter. It tells the operating system which program should interpret and execute the commands in the script

```bash
#!/bin/bash
```

### LOOPS

While Loops:

```bash
while [ <test>]
  do
  <command>
done
```

For Loop:

this is more akin to a forEach() loop in JS since the loop number is automatically set by <list>

```bash
for var in <$list>
  do
  <commands>
done
```

Ranges:

More akin to the vanilla for loop in JS

```bash
for value in {1..5}
  do
  echo $value
done
```

---

### VARIABLES

Two actions performed for variables:

1. Setting value for variables
2. Reading value of variables

Setting Variables:

```bash
variable="test"
```

Reading Variables:

```bash
echo $variable
```

Local Variables:

local variables are variables that are defined and accessible only within the scope of a specific function.

Setting Local Variables:

```bash
calculate_sum() {
  local a=5
  local b=10
  local sum=$((a + b))
  echo "The sum is: $sum"
}
```

---

### CONDITIONALS

Conditional operators:

| Operator | Description |
| --- | --- |
| -eq | Returns true if two numbers are equivalent |
| -lt | Returns true if a number is less than another number |
| -gt | Returns true if a number is greater than another number |
| == | Returns true if two strings are equivalent |
| ≠  | Returns true if two strings are not equivalent |
| ! | Returns true if the expression is false |

If Statement:

```bash
if [ conditional ]; then
  <command>
fi
```

If-else Statement:

```bash
if [ conditional ]; then
  <command>
  else
  <command>
fi
```

If-elif-else Statement:

```bash
if [ conditional ]; then
  <command>
    elif [ conditional ]; then 
    <command>
    else
    <command>
fi
```

---

### FUNCTIONS

There are two ways to declare functions in bash:

1. First way to Declare a Function:

```bash
function_name() {
  <commands>
}
```

1. Second way to Declare a Function:

```bash
function function_name() {
  <commands>
}
```

Single-line Function:

```bash
function_name() { <commands>; }
# in single line, requires semi-colon after last command
```

Passing arguments:

```bash
add_numbers() {
  a="$1"
  b="$2"
  c=$(($1 + $2))
  echo -e "${GREEN}The sum of $a and $b is $c${NC}"
}
# notice how args are passed
add_numbers 4 6
```

Return Values:

Unlike in other programming languages, Bash functions don’t allow you to return a value when called. When a bash function completes, its return value is the status of the last statement executed in the function, `0` for success and non-zero decimal number in the `1 - 255` range for failure.`

The return status can be specified by using the `return` keyword, and it is assigned to the variable `$?`. The `return` statement terminates the function. You can think of it like the function’s exit status.

> **`return`** is used to exit a function and provide a value back to the caller, while **`exit`** is used to terminate the entire script or shell session.
> 

Success Return:

```bash
# success
success_function() {
  return 0
}

success_function
echo -e "?$"
```

Failure Return:
