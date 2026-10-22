#!/bin/bash

echo "=== Simple Calculator ==="
read -p "Enter first number: " num1
read -p "Enter second number: " num2

echo "Choose an operation:"
echo "1. Addition (+)"
echo "2. Subtraction (-)"
echo "3. Multiplication (*)"
echo "4. Division (/)"
read -p "Enter choice (1-4): " choice

case $choice in
  1)
    result=$(echo "$num1 + $num2" | bc)
    echo "Result: $num1 + $num2 = $result"
    ;;
  2)
    result=$(echo "$num1 - $num2" | bc)
    echo "Result: $num1 - $num2 = $result"
    ;;
  3)
    result=$(echo "$num1 * $num2" | bc)
    echo "Result: $num1 * $num2 = $result"
    ;;
  4)
    if [ "$num2" == "0" ]; then
      echo "Error: Division by zero is not allowed."
    else
      result=$(echo "scale=2; $num1 / $num2" | bc)
      echo "Result: $num1 / $num2 = $result"
    fi
    ;;
  *)
    echo "Invalid choice!"
    ;;
esac