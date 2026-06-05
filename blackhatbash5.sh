#!/bin/bash
touch test && touch test123

(ls; ps)

ls; ps; whoami

lzl || echo "the lzl command failed"
#el comando lzl fallo 

echo "Hello World!" > output.txt
cat output.txt
#Hello World!

$ echo "Goodbye!" >> output.txt
$ cat output.txt
#Hello World!
#Goodbye!
cat output.txt