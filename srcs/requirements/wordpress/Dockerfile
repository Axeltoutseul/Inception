FROM debian:bookworm

RUN apt-get install -y wget \
    php7.3 \
    php-fpm \
    php-mysql \
    mariadb-client

COPY source dest

EXPOSE 9000

ENTRYPOINT [""]