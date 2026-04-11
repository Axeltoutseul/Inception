# FROM debian:bookworm

# RUN apt-get update && apt-get install -y wget \
#     php7.3 \
#     php-fpm \
#     php-mysql \
#     mariadb-client

# EXPOSE 9000

# ENTRYPOINT ["bash", "-c", "tail -f /dev/null"]


FROM debian:bookworm

RUN apt update -y && \
    apt-get install -y curl git unzip \
    php php-cli php-fpm php-mysql php-mbstring php-xml php-curl

# Installer Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Installer WP-CLI
RUN curl -o /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x /usr/local/bin/wp

COPY conf/wp-config.php /var/www/html/wp-config.php

EXPOSE 9000

ENTRYPOINT ["bash", "-c", "tail -f /dev/null"]