#!/bin/sh

DB = "my_database"
USER = "axbaudri"

mysql -u $USER -e "CREATE DATABASE IF NOT EXISTS $DB (first_name VARCHAR(20), last_name VARCHAR(30), e-mail VARCHAR(60))"
mysql -u $USER -e "CREATE USER $USER"
mysql -u $USER -e "INSERT INTO $DB (first_name, last_name, e-mail) VALUES('Axel', 'Baudrillart', 'baudrillart.axel.42@gmail.com')"