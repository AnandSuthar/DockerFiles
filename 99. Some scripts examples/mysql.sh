#!/bin/bash
mysql.server start
mysql -u root -padmin << EOF
SET PASSWORD FOR root@'localhost' = PASSWORD(“admin2”);
EOF

#create database apple





mysql -u root -padmin2 -e "SET PASSWORD FOR root@'localhost' = PASSWORD('admin2');"