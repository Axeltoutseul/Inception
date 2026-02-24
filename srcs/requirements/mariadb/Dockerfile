FROM debian:bookworm
RUN apt-get install -y mysql-server
EXPOSE 3306
ENTRYPOINT ["sh", "database.sh"]


# FROM : <- viens me chercher l'image de quelque chose qui est sur dockerhub (l'equivalent de github pour docker).
# exemple : FROM : debian_bookworm -> "recupere l'image de debian bookworm".

# RUN -> run une commande : exemple : RUN sudo apt get install make = run la commande "sudo apt get install make";

# COPY -> 2 arguments: un fichier depuis lequel tu veux copier des informations et un fichier dans le lequel tu veux copier ces infos.