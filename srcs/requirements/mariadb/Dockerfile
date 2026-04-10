FROM debian:bookworm

RUN apt-get update -y && apt-get upgrade -y && apt-get install mariadb-server -y

COPY database.sh /docker-entrypoint.sh

COPY conf/mariadb.conf /etc/mysql/mariadb.cnf

EXPOSE 3306

RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]


# FROM : <- viens me chercher l'image de quelque chose qui est sur dockerhub (l'equivalent de github pour docker).
# exemple : FROM : debian_bookworm -> "recupere l'image de debian bookworm".

# RUN -> run une commande : exemple : RUN sudo apt get install make = executer la commande "sudo apt get install make";

# COPY -> 2 arguments: un fichier depuis lequel tu veux copier des informations et un fichier dans le lequel tu veux copier ces infos.




# N'hesite pas a aller sur la chaine YouTube de xavki pour en savoir plus sur Docker entre autres