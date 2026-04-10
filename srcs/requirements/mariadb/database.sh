#!/bin/sh

DB="$DB_NAME"
USER="$DB_USER"
PASSWD="$DB_PASSWORD"
ROOTPASSWD="$DB_ROOT_PASSWORD"

service mariadb start;

if [ -f /root/.my.cnf ]; then
    mysql -u "$USER" -e "CREATE DATABASE IF NOT EXISTS \`${DB}\`;"
    mysql -u "$USER" -e "CREATE USER '${USER}'@'localhost' IDENTIFIED BY '${PASSWD}';"
    mysql -u "$USER" -e "GRANT ALL PRIVILEGES ON ${DB}.* TO '${USER}'@'localhost';"
    mysql -u "$USER" -e "FLUSH PRIVILEGES;"

else
    mysql -u root -p"$ROOTPASSWD" -e "CREATE DATABASE IF NOT EXISTS \`${DB}\`;"
    mysql -u root -p"$ROOTPASSWD" -e "CREATE USER '${USER}'@'localhost' IDENTIFIED BY '${PASSWD}';"
    mysql -u root -p"$ROOTPASSWD" -e "GRANT ALL PRIVILEGES ON ${DB}.* TO '${USER}'@'localhost';"
    mysql -u root -p"$ROOTPASSWD" -e "FLUSH PRIVILEGES;"

fi




# DB = "my_database"
# USER = "axbaudri"

# mysql -u $USER -e "CREATE DATABASE IF NOT EXISTS $DB (first_name VARCHAR(20), last_name VARCHAR(30), e-mail VARCHAR(60))"
# mysql -u $USER -e "CREATE USER $USER"
# mysql -u $USER -e "INSERT INTO $DB (first_name, last_name, e-mail) VALUES('Axel', 'Baudrillart', 'baudrillart.axel.42@gmail.com')"
