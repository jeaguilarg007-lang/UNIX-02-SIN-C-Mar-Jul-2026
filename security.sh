touch security.sh
#
id
#
##uid=0(root) gid=0(root) grupos=0(root) 
id-gn
#
##root
id -gn
#
##
touch ~/test_grupo_heredado.txt
#
##
ls -la ~/test_grupo_heredado.txt
#
##-rw-r--r-- 1 root root 0 may 29 14:57 /root/test_grupo_heredado.txt

id -gn
#
##root
touch ~/antes_de_newgrp.txt
#
ls -la ~/antes_de_newgrp.txt
#
##-rw-r--r-- 1 root root 0 may 29 15:04 /root/antes_de_newgrp.txt
apt update
#
apt upgrade
#
apt install util-linux-extra
#
groupadd Desarrolladores
#
id -gn
#
newgrp Desarrolladores
#
id -gn
#
echo $$
#
id -gn
#
##root
echo $$
#
##32081
groupadd desarrolladores
#
newgrp desarrolladores 
#
id -gn
#
##desarrolladores
echo $$
#
##35564
touch ~/dentro_de_newgrp.txt
#
ls -la ~/dentro_de_newgrp.txt
#
##-rw-r--r-- 1 root desarrolladores 0 may 29 15:57 /root/dentro_de_newgrp.txt
mkdir -p ~/proyecto_dev/src
#
ls -la ~/
#\
##total 64
##drwx------ 1 root root             4096 may 29 15:59 .
##drwxr-xr-x 1 root root             4096 may 29 14:38 ..
##-rw-r--r-- 1 root root                0 may 29 15:04 antes_de_newgrp.txt
##-rw-r--r-- 1 root root             5578 may 24 04:01 .bashrc
##-rw-r--r-- 1 root root              607 may 24 04:01 .bashrc.original
##drwxr-xr-x 3 root root             4096 may 29 14:39 .cache
##drwx------ 3 root root             4096 may 29 14:39 .config
##-rw-r--r-- 1 root desarrolladores     0 may 29 15:57 dentro_de_newgrp.txt
##-rw-r--r-- 1 root root                0 may 29 15:33 despues_de_newgrp.txt
##lrwxrwxrwx 1 root root               47 may 29 14:38 .docker -> /workspaces/.codespaces/.persistedshare/.docker
##drwxr-xr-x 3 root root             4096 may 29 14:39 .dotnet
##drwx------ 4 root root             4096 may 29 14:39 .local
##-rw-r--r-- 1 root root              132 may 15 11:37 .profile
##drwxr-xr-x 3 root desarrolladores  4096 may 29 15:59 proyecto_dev
##drwx------ 2 root root             4096 may 29 14:38 .ssh
##-rw-r--r-- 1 root root                0 may 29 14:57 test_grupo_heredado.txt
##drwxr-xr-x 5 root root             4096 may 29 14:39 .vscode-remote
##-rw------- 1 root root                0 may 29 14:39 .zsh_history
##-rw-r--r-- 1 root root            10974 may 29 14:38 .zshrc
                                                                              