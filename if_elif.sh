#!/bin/bash
USER_INPUT="${1}"

if [[ -z "${USER_INPUT}" ]]; then
    echo "You must provide an argument!"
    exit 1
fi
# ❶ Checks if no argument was provided, prints an error message, and exits the script

if [[ -f "${USER_INPUT}" ]]; then
    echo "${USER_INPUT} is a file."
# ❷ Tests if the argument is a regular file and prints confirmation

elif [[ -d "${USER_INPUT}" ]]; then
    echo "${USER_INPUT} is a directory."
# ❸ If not a file, tests if the argument is a directory and prints confirmation

else
    echo "${USER_INPUT} is not a file or a directory."
fi
# ❹ If neither condition is true, prints a fallback message and closes the conditional block


