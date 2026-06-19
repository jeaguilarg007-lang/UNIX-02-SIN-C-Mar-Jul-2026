#!/bin/bash

touch example_file1 example_file2 example_file3

grep "35.237.4.214" log.txt

grep "35.237.4.214\|13.66.139.0" log.txt

grep -e "35.237.4.214" -e "13.66.139.0" log.txt

ps

ps | grep TTY

ps | grep -i tty

grep -v "35.237.4.214" log.txt

awk '{print $1}' log.txt
awk '{print $3}' log.txt
awk '{print $1,$2,$3}' log.txt
awk '{print $1,$NF}' log.txt
echo -e "hola1,chao1\nhola2,chao2\nhola3,chao3" > test.csv
awk -F',' '{print $2}' test.csv
awk -F',' '{print $1}' test.csv
awk 'NR < 10' log.txt
 grep "42.236.10.117" log.txt
#Searches the file log.txt for all lines that contain the IP address 42.236.10.117.
 awk '{print $7}'
#Prints the 7th column (field) from each line of the input. Fields are separated by spaces by default.
 grep "42.236.10.117" log.txt | awk '{print $7}'
#First finds all lines in log.txt that contain the IP address 42.236.10.117, then extracts and prints the 7th column from those matching lines.
