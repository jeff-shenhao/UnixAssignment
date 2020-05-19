#!/usr/bin/env bash	 
#This program will ask user to enter a number, the number have to matching with the file count
#in current directory, it it will continue to
#ask the user to enter number until the correct number is given 

file_count=$(ls -al|grep ^-|wc -l)

echo "Please guess the file count:" 
read user_input

function guess {
while [[ $user_input -ne $file_count ]]
do
	if [[ $user_input -gt $file_count ]]
	then
		echo "Your input is too high"
		read user_input
	else
		echo "Your input is too low"
		read user_input
	fi
done
echo "Well done!, Your guess is correct, there are $user_input files in this directory!"
}

guess $user_input
