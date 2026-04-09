FROM debian:bookworm

RUN apt-get update -y && apt-get upgrade -y && apt-get install mariadb-server -y

# RUN /usr/libexec/mariadb-prepare-db-dir mariadb.service

EXPOSE 3306

ENTRYPOINT ["bash", "-c", "tail -f /dev/null"]

CMD ["mkdir", "-p", "/home/axbaudri/login"]


# FROM : <- viens me chercher l'image de quelque chose qui est sur dockerhub (l'equivalent de github pour docker).
# exemple : FROM : debian_bookworm -> "recupere l'image de debian bookworm".

# RUN -> run une commande : exemple : RUN sudo apt get install make = executer la commande "sudo apt get install make";

# COPY -> 2 arguments: un fichier depuis lequel tu veux copier des informations et un fichier dans le lequel tu veux copier ces infos.




# N'hesite pas a aller sur la chaine YouTube de xavki pour en savoir plus sur Docker entre autres