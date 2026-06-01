#!/bin/bash
PUBLISHER="No Starch Press"
print_name(){
local name
name="Black Hat Bash"
echo "${name} by ${PUBLISHER}"
}
print_name
echo "Variable ${name} will not be printed because it is a local variable."

#Cual es la diferencia entre una variable local y global
#A global variable can be used anywhere in the script, including inside functions. A local variable, on the other hand, only exists within the block or function where it is created and cannot be accessed from outside it.
#Que particularidades tiene en las envocacion de funciones de bash
#In Bash, functions can access global variables, but they can also define local variables using the local keyword. Local variables only exist during the execution of the function and are destroyed after it finishes. This helps prevent conflicts between variables and keeps the code more organized and secure, since functions cannot accidentally modify variables outside their scope when they are declared as local.