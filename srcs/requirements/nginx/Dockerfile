FROM debian:bookworm

RUN apt-get update -y && apt-get install nginx -y

COPY index.html /var/www/html/index.nginx-debian.html

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]

#ENTRYPOINT ["bash", "-c", "tail -f /dev/null"]
#CMD ["/usr/sbin/nginx", "-g", "daemon off;"]