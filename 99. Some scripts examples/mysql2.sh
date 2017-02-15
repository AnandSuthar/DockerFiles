#!/bin/bash
mysql.server start
mysql -u root -padmin2 << EOF
SET PASSWORD FOR  root@'localhost' = PASSWORD('admin3');
EOF
