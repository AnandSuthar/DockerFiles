RUN=$1

service mysql start

mysql -u root << EOF
create database apple;
exit
EOF


cd /
cd vapor

if $RUN; then
vapor run
else
vapor build
fi


/bin/bash
