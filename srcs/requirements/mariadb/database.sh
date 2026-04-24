#!/bin/sh

chown -R mysql:mysql /var/lib/mysql

# Initialiser le datadir si vide
if [ ! -d /var/lib/mysql/mysql ]; then
    mysql_install_db --user=mysql --datadir=/var/lib/mysql
fi

service mariadb start;

until mariadb -e ";" 2>dev/null; do
    sleep 1
done

mariadb -e  "CREATE DATABASE IF NOT EXISTS \`$DB_NAME\`;"
mariadb -e  "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';"
mariadb -e  "GRANT ALL PRIVILEGES ON *.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';"
mariadb -e  "FLUSH PRIVILEGES;"

service mariadb stop;

exec mariadbd --datadir=/var/lib/mysql