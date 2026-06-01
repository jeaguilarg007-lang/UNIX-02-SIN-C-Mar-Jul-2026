bash --version

env

echo ${SHELL}

echo ${RANDOM}

echo ${UID}

echo ${OSTYPE}

ps -e -f

ps -ef

df --human-readable
# Displays disk usage of the system in a human-readable format (KB, MB, GB)

bash -x blackhatbash1.sh
# Runs the script "blackhatbash1.sh" showing each command as it is executed
# (-x enables debug mode to trace the script step by step)

bash -r blackhatbash1.sh
# Runs the script "blackhatbash1.sh" in restricted mode
# (-r limits several shell features for security, blocking potentially dangerous actions)