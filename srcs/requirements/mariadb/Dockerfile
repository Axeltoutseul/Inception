FROM debian:bookworm

RUN apt update -y && apt upgrade -y

EXPOSE 3306

ENTRYPOINT ["bash", "-c", "tail -f /dev/null"]


# FROM : <- viens me chercher l'image de quelque chose qui est sur dockerhub (l'equivalent de github pour docker).
# exemple : FROM : debian_bookworm -> "recupere l'image de debian bookworm".

# RUN -> run une commande : exemple : RUN sudo apt get install make = executer la commande "sudo apt get install make";

# COPY -> 2 arguments: un fichier depuis lequel tu veux copier des informations et un fichier dans le lequel tu veux copier ces infos.