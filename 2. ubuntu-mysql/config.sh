#!/bin/bash
if [[ ! "$(/usr/sbin/service mysql status)" =~ "start/running" ]]
then
    /usr/sbin/service mysql start
fi

mysql -u root << EOF
create database apple;
SET PASSWORD FOR root@'localhost' = PASSWORD('admin');
exit
EOF

rm /usr/local/bin/mysql-config.sh


/bin/bash
