ls -a
#This is the short option form of the command. It tells ls to list all files, including hidden ones
.  ..  .git  .gitignore  LICENSE  README.md  script.sh
ls --all
#This is the long option form. It does exactly the same thing as ls -a.
.  ..  .git  .gitignore  LICENSE  README.md  script.sh
ls -h
#
LICENSE  README.md  script.sh
ls -l -ah
#
total 64K
drwxrwxrwx+ 3 codespace root      4.0K Apr 17 14:18 .
drwxr-xrwx+ 5 codespace root      4.0K Apr 17 14:17 ..
drwxrwxrwx+ 8 codespace root      4.0K Apr 17 14:21 .git
-rw-rw-rw-  1 codespace root      4.6K Apr 17 14:17 .gitignore
-rw-rw-rw-  1 codespace root       34K Apr 17 14:17 LICENSE
-rw-rw-rw-  1 codespace root        53 Apr 17 14:17 README.md
-rw-rw-rw-  1 codespace codespace  315 Apr 17 14:25 script.sh

ls -lah
#
total 64K
drwxrwxrwx+ 3 codespace root      4.0K Apr 17 14:18 .
drwxr-xrwx+ 5 codespace root      4.0K Apr 17 14:17 ..
drwxrwxrwx+ 8 codespace root      4.0K Apr 17 14:21 .git
-rw-rw-rw-  1 codespace root      4.6K Apr 17 14:17 .gitignore
-rw-rw-rw-  1 codespace root       34K Apr 17 14:17 LICENSE
-rw-rw-rw-  1 codespace root        53 Apr 17 14:17 README.md
-rw-rw-rw-  1 codespace codespace  740 Apr 17 14:26 script.sh