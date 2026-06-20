#!/usr/bin/env bash

echo "What is your first name?" # Ask to the user with echo what is their first name
# Read the input and put it into the variable named firstname
read -r fname 
echo "What is your last name?" # Ask to the user with echo what is their last name
# Read the input and put it into the variable named lastname
read -r lname 
touch output.txt # Create a new file named output.txt
date "+%d-%m-%Y" > output.txt # Using the date command and with the format (+%d-%m-%Y) and redirects it to the output.txt file with >
echo "${fname} ${lname}" >> output.txt # Add the user's full name using the variables we created at the beginning (fname and lname) using >> to avoid replacing the file's contents, simply add it
cat output.txt # To see the result of our script