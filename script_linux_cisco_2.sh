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

