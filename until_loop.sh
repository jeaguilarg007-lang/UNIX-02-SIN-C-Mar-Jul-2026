#!/bin/bash
# Specifies that the script should be executed with the Bash shell

FILE="output.txt"
# Defines a variable named FILE and assigns it the value "output.txt"

touch "${FILE}"
# Creates the file "output.txt" if it does not exist, or updates its timestamp if it does

until [[ -s "${FILE}" ]]; do
# Starts a loop that continues until the file has a non-zero size (-s checks if file is not empty)

    echo "${FILE} is empty..."
    # Prints a message indicating the file is empty

    echo "Checking again in 2 seconds..."
    # Prints a message that the script will wait before checking again

    sleep 2
    # Pauses execution for 2 seconds before repeating the loop
done
# Ends the until loop

echo "${FILE} appears to have some content in it!"
# Prints a message confirming the file now has content
