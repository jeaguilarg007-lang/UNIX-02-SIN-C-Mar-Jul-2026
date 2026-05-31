cd ~/Documents
# Changes the current working directory to the user's Documents folder, allowing access to files and subdirectories stored there.

mv people.csv Work
# Moves the file people.csv from the current directory to the Work directory without changing its contents.

ls Work
# Displays all files and directories contained in the Work directory so the user can verify that people.csv was moved successfully.

##people.csv

mv numbers.txt letters.txt alpha.txt School
# Moves the files numbers.txt, letters.txt, and alpha.txt from the current directory into the School directory.

ls School
# Lists the contents of the School directory, showing both files and subdirectories currently stored there.

##Art  Engineering  Math  alpha.txt  letters.txt  numbers.txt

ls
# Displays all visible files and directories in the current working directory.

##Work             alpha-third.txt   hidden.txt    os.csv
##adjectives.txt   animals.txt       linux.txt     profile.txt
##alpha-first.txt  food.txt          longfile.txt  red.txt

mv animals.txt zoo.txt
# Renames the file animals.txt to zoo.txt while keeping it in the same directory.

ls
# Displays the contents of the current directory again to confirm that the file has been successfully renamed.

##School           alpha-second.txt  hidden.txt    os.csv
##Work             alpha-third.txt   linux.txt     profile.txt
##adjectives.txt   food.txt          longfile.txt  red.txt
##alpha-first.txt  hello.sh          newhome.txt   zoo.txt

cd ~/Documents
# Changes the current working directory to the user's Documents folder, allowing the user to work with files and directories stored there.

rm linux.txt
# Permanently removes the file linux.txt from the current directory.

ls linux.txt
# Attempts to display information about linux.txt to verify whether the file still exists.
##ls: cannot access linux.txt: No such file or directory

rm Work
# Attempts to remove the directory named Work using the rm command without recursive options.
##rm: cannot remove 'Work': Is a directory

rm -r Work
# Recursively removes the Work directory and all files and subdirectories contained within it.

ls Work
# Checks whether the Work directory still exists after the deletion process.
##ls: cannot access Work: No such file or directory

cd ~/Documents
# Changes the current working directory to the user's Documents folder, allowing access to files stored in that location.

cp /etc/passwd .
# Copies the passwd file from the /etc directory to the current directory. The dot (.) represents the current working directory.

grep sysadmin passwd
# Searches the passwd file for lines containing the word "sysadmin" and displays any matching entries.
##sysadmin:x:1001:1001:System Administrator,,,,:/home/sysadmin:/bin/bash