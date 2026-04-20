*This project has been created as part of the 42 curriculum by axbaudri*

## Description
The goal of this project is to create several Docker containers and make them work together by configuring an administration system. There is three containers, each for a tool : MariaDB for database save, Wordpress for website creation and management, and Nginx to configure the web server

## Instructions

### Compilation

```bash
make
```

### Free space 

```bash
make down
```


# Resources

MariaDB and Wordpress in Docker Compose : 
https://stephane-arrami.com/articles/guide-pratique-pour-dockeriser-wordpress-avec-un-dockerfile-personnalise/
 
MariaDB in Docker compose : 
https://www.ionos.fr/digitalguide/hebergement/aspects-techniques/mariadb-docker/
 
Dockerfile in wordpress directory : 
https://stephane-arrami.com/articles/guide-pratique-pour-dockeriser-wordpress-avec-un-dockerfile-personnalise/
 
Database creation : 
https://stackoverflow.com/questions/33470753/create-mysql-database-and-user-in-bash-script
 
Config file for wordpress : 
https://blog.o2switch.fr/configurer-wp-config-php-wordpress/
 
nginx.conf : 
https://medium.com/@wawerumwaura/nginx-and-docker-configuration-aac7b26210fe
https://grafikart.fr/tutoriels/nginx-692



### astuce
```
commande SQL :

SHOW DATABASES; # pour afficher les base de donnee
USE #DB_NAME; # pour rentrer dans une base de donner
SELECT User, Host, Password from mysql.user; # pour afficher les droits wordpress dans mariadb
```
```
commande docker pour debugger :

docker exec -it #nom_du_containner bash
```