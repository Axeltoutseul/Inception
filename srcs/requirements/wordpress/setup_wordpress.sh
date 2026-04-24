#!/bin/sh

until mariadb -h db -u "$DB_USER" -p"$DB_PASSWORD" -e ";" 2>/dev/null; do
    sleep 2
done

if [ -f /var/www/html/wp-login.php ]; then
    echo "Wordpress is already installed"
else
    wp core download --path=/var/www/html --allow-root
    cp /usr/local/bin/wordpress/wp-config.php /var/www/html/wp-config.php
    wp core install \
        --path=/var/www/html \
        --url="$DOMAIN_NAME" \
        --title="$WP_TITLE" \
        --admin_user="$WP_ADMIN" \
        --admin_password="$WP_ADMIN_PASSWORD" \
        --admin_email="$WP_ADMIN_EMAIL" \
        --allow-root
fi

# Lancer php-fpm en avant-plan
exec php-fpm8.2 -F