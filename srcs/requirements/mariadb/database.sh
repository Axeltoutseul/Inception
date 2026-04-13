#!/bin/sh

service mariadb start;

mariadb -e  "CREATE DATABASE IF NOT EXISTS \`$DB_NAME\`;"
mariadb -e  "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';"
mariadb -e  "GRANT ALL PRIVILEGES ON *.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';"
mariadb -e  "FLUSH PRIVILEGES;"

service mariadb stop;

exec mariadbd --datadir=/var/lib/mysql