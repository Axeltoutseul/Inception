FROM debian:bookworm

RUN apt-get update && apt-get install -y wget \
    php7.3 \
    php-fpm \
    php-mysql \
    mariadb-client

EXPOSE 9000

ENTRYPOINT ["bash", "-c", "tail -f /dev/null"]