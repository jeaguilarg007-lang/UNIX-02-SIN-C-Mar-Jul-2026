#!/bin/bash
set -x
## Enables debug mode in the shell
# (set -x makes Bash print each command and its arguments before executing it, useful for tracing scripts)
#bash --version

env

echo ${SHELL}

echo ${RANDOM}

echo ${UID}

echo ${OSTYPE}

ps -e -f

ps -ef

df --human-readable
# Displays disk usage of the system in a human-readable format (KB, MB, GB)

#bash -x blackhatbash1.sh
# Runs the script "blackhatbash1.sh" showing each command as it is executed
# (-x enables debug mode to trace the script step by step)

#bash -r blackhatbash1.sh
# Runs the script "blackhatbash1.sh" in restricted mode
# (-r limits several shell features for security, blocking potentially dangerous actions)

chmod u+x blackhatbash1.sh
# Gives the owner (user) permission to execute the file "blackhatbash1.sh"

#./blackhatbash1.sh
# Runs the script "blackhatbash1.sh" from the current directory
# (./ means execute a file located in the current folder)

#bash -n blackhatbash1.sh

set +x
## Disables debug mode in the shell
# (set +x turns off command tracing so commands are no longer printed before execution)

# bash blackhatbash1.sh
# Executes the script "blackhatbash1.sh" using the Bash shell
# (runs the script without requiring execute permissions if called directly with bash)