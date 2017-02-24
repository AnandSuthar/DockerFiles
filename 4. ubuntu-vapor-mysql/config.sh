service mysql start

mysql -u root << EOF
create database apple;
exit
EOF


cd /
cd vapor
vapor run

/bin/bash
