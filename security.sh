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