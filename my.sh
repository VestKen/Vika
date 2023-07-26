#!/bin/bash


#exercise 1
echo "Hello, World!"

#exercise 2
echo "Sum of Two Numbers"

read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

sum=$((num1 +num2))

echo "The sum of $num1 and $num2 is: $sum"

#exercise 3
echo "Check File Existence"

read -p "Enter the filename: " filename

if [ -e "$filename" ]; then 
	echo "File exists."
else 
	echo "File not found."
fi

#exercise 4
echo "Even or Odd"

read -p "Enter a number: " num

if [ $((num % 2)) -eq 0 ]; then
    echo "Even"
else
    echo "Odd"
fi

#exercise 5
echo "File Backup"

read -p "Enter the filename to backup: " filename
backup_filename="${filename}_$(date +%Y%m%d)"

if [ -e "$filename" ]; then
	cp "$filename" "$backup_filename"
	echo "Backup created: $backup_filename"
else 
	echo "File not found."
fi

#exercise 6
echo "Greeting Message"

read -p "Enter your name: " name

echo "Hello, $name!"

#exercise 7
echo "File Size"

read -p "Enret the filename: " filename

if [ -e "$filename" ]; then
	size=$(wc -c < "$filename")
	echo "File size of '$filename': $size bytes"
else
	echo "File not found."
fi 

#exercise 8
echo "Count Lines, Words, and Characters"

read -p "Enter the filename: " filename

if [ -e "$filename" ]; then
	lines=$(wc -l < "$filename")
	words=$(wc -w < "$filename")
	characters=$(wc -m < "$filename")
	echo "Number of lines: $lines"
	echo "Number of words: $words"
	echo "Number of characters: $characters"
else
	echo "File not found."
fi

#exerciseecho "Sum of N Numbers" 

read -p "Enter the number of values (N): " N

sum=0
for (( i=1; i<=N; i++ )); do
	read -p "Enret value $i: " num 
	sum=$((sum + num)) 
done

echo "Sum of the numbers: $sum"

#exercise 10
echo "Temperature Conversion" 

read -p "Enter temperature in Celsius: " celsius

fahrenheit=$(echo "scale=2; ($celsius * 9/5) + 32" | bc)
echo "Temperature in Fahrenheit: $fahrenheit°F"




#exercize 11
#exersize 12
#exersize 13
#exersize 14
#exercize 15
#exersize 16
#exersize 17
#exersize 18
#exersize 19

#exersize 20
#echo "Prime Number Checker"

#read -p "Enter a positive integer: " num

#if ((num <= 1)); then 
#	echo "Not a prime number."
#	exit 1
#fi

#is_prime=true 
#for (( i=2; i<=num/2; i++ )); do
#	if ((num % i == 0)); then
#		is_prime=false
#		break
#	fi
#done

#if $is_prime; then
#	echo "$num is a prime number."
#else 
#	echo "$num is not a prime number."
#fi



