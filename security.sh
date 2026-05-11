id 
#Displays information about the current user:
# UID (User ID), GID (Group ID), and the groups the user belongs to.
uid=0(root) gid=0(root) grupos=0(root)

groups
#Displays only the groups the current user belongs to.
# Useful for checking permissions and group memberships. 


cat /etc/passwd
#Displays the contents of the /etc/passwd file, which contains user account information.
root:x:0:0:root:/root:/usr/bin/zsh
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
backup:x:34:34:backup:/var/backups:/usr/sbin/nologin
list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin
irc:x:39:39:ircd:/run/ircd:/usr/sbin/nologin
_apt:x:42:65534::/nonexistent:/usr/sbin/nologin
nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin
systemd-network:x:997:997:systemd Network Management:/:/usr/sbin/nologin
debian-tor:x:100:101::/var/lib/tor:/bin/false
tcpdump:x:996:996:tcpdump:/nonexistent:/usr/sbin/nologin

cat /etc/passwd | head -10
#Displays only the first 10 lines of the /etc/passwd file.
# "cat" prints the entire file.
# "|" (pipe) sends the output to another command.
# "head -10" limits the output to the first 10 lines.   
root:x:0:0:root:/root:/usr/bin/zsh
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin

touch text.txt
#Creates an empty file named text.txt in the current directory.

ls -l text.txt
#Lists the details of the file text.txt, including permissions, owner, group, size, and modification date.
total 68
drwxrwxrwx+ 4 root root  4096 may  8 14:40 .
drwxr-xrwx+ 4 root root  4096 may  8 14:20 ..
drwxrwxrwx+ 2 root root  4096 may  8 14:20 .devcontainer
drwxrwxrwx+ 7 root root  4096 may  8 14:40 .git
-rw-rw-rw-  1 root root  4688 may  8 14:20 .gitignore
-rw-rw-rw-  1 root root 34523 may  8 14:20 LICENSE
-rw-rw-rw-  1 root root    53 may  8 14:20 README.md
-rw-rw-rw-  1 root root  1517 may  8 14:38 security.sh
-rw-rw-rw-  1 root root     0 may  8 14:40 text.txt

cat /etc/group   
#Displays the contents of the /etc/group file, which contains group account information.       
root:x:0:
daemon:x:1:
bin:x:2:
sys:x:3:
adm:x:4:
tty:x:5:
disk:x:6:
lp:x:7:
mail:x:8:
news:x:9:
uucp:x:10:
man:x:12:
proxy:x:13:
kmem:x:15:
dialout:x:20:
fax:x:21:
voice:x:22:
cdrom:x:24:
floppy:x:25:
tape:x:26:
sudo:x:27:
audio:x:29:
dip:x:30:
www-data:x:33:
backup:x:34:
operator:x:37:
list:x:38:
irc:x:39:
src:x:40:
shadow:x:42:
utmp:x:43:
video:x:44:
sasl:x:45:
plugdev:x:46:
staff:x:50:
games:x:60:
users:x:100:
nogroup:x:65534:
lpadmin:x:999:
systemd-journal:x:998:
systemd-network:x:997:
debian-tor:x:101:
tcpdump:x:996:

groups $USER
#Displays the groups that the current user belongs to, using the $USER environment variable to specify the user.
root : root

id -u 
#Displays the UID (User ID) of the current user.
0

id -g
#Displays the GID (Group ID) of the current user.
0

id -G
#Displays all the group IDs (GIDs) that the current user belongs to.
0
mkdir ~/proyecto_unix/
#Creates a directory named proyecto_unix in the current user's home directory.

ls -ls ~/proyecto_unix/
#Lists the details of the proyecto_unix directory, including permissions, owner, group, size, and modification date.
total 0

groupadd [operaciones] Desarrolladores
#Creates a new group named Desarrolladores with the GID (Group ID) of 1001. The [operaciones] part is not a valid option and should be removed.
Modo de uso: groupadd [opciones] GRUPO

Opciones:
  -f, --force                   termina si el grupo ya existe, y cancela -g
                                si el GID ya se está en uso
  -g, --gid GID                 utiliza GID para el nuevo grupo
  -h, --help                    muestra este mensaje de ayuda y termina
  -K, --key CLAVE=VALOR         sobrescribe los valores predeterminados de
                                «/etc/login.defs»
  -o, --non-unique              permite crear grupos con GID (no únicos)
                                duplicados
  -p, --password CONTRASEÑA     utiliza esta contraseña cifrada para el nuevo
                                grupo
  -r, --system                  crea una cuenta del sistema
  -R, --root DIR_CHROOT         establece DIR_CHROOT como el directorio
                                al cual hacer chroot
  -P, --prefix PREFIX_DIR       directory prefix
  -U, --users USERS             comma-separated list of users to add as
                                 members of this group

sudo groupadd Desarrolladores
#Creates a new group named Desarrolladores with the GID (Group ID) of 1001, using sudo to execute the command with superuser privileges.

sudo groupadd -g 2000 operaciones
#Creates a new group named operaciones with the GID (Group ID) of 2000, using sudo to execute the command with superuser privileges.


groupadd -g 2000 operacione
#create a new group but with a specific id
groupadd desarrolladores
#create a new group
grep "desarrolladores\|operaciones\|servicios-web" /etc/group
#show the groups
grep "GID_MIN\|GID_MAX\|SYS_GID" /etc/login.defs
#set the maximum and minimum numbers of the groups
#create groups with addgroup
addgroup --system cache_web
addgroup --gid 2100 marketing
grep "diseno\|marketing\|cache_web" /etc/group
usermod -aG diseno root
usermod -aG desarrolladores root
#add root into a group
grep "desarrolladores\|diseno" /etc/group
#Searches the /etc/group file for entries that contain either desarrolladores or diseno
adduser root marketing
#create a group called marketing
id
#show the groups and ids