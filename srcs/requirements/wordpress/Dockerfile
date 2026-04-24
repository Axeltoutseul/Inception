FROM debian:bookworm

RUN apt update -y && \
    apt-get install -y curl git unzip \
    wget php php-fpm php-mysql mariadb-client

# Installer WP-CLI
RUN curl -o /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x /usr/local/bin/wp

RUN mkdir -p /usr/local/bin/wordpress

COPY conf/wp-config.php /usr/local/bin/wordpress/wp-config.php
COPY conf/www.conf /etc/php/8.2/fpm/pool.d/www.conf

COPY setup_wordpress.sh /usr/local/bin/wordpress/setup_wordpress.sh

RUN chmod +x /usr/local/bin/wordpress/setup_wordpress.sh

EXPOSE 9000

ENTRYPOINT ["/usr/local/bin/wordpress/setup_wordpress.sh"]