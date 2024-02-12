# DOCKER HUB: https://hub.docker.com/_/php/
FROM php:8.2.15-fpm

# System
RUN apt-get update && \
    apt-get install --no-install-recommends --yes curl && \
    apt-get install --no-install-recommends --yes nano

# PHP: https://github.com/mlocati/docker-php-extension-installer
RUN apt-get install --no-install-recommends --yes libzip-dev && \
    apt-get install --no-install-recommends --yes unzip && \
    docker-php-ext-install opcache && \
    docker-php-ext-install mysqli && \
    docker-php-ext-install zip

RUN cp /usr/local/etc/php/php.ini-development /usr/local/etc/php/php.ini && \
    sed -i "s|^;date.timezone =.*$|date.timezone = Europe/London|" /usr/local/etc/php/php.ini && \
    sed -i "s|display_startup_errors =.*$|display_startup_errors = On|" /usr/local/etc/php/php.ini && \
    sed -i "s|display_errors =.*$|display_errors = On|" /usr/local/etc/php/php.ini && \
    sed -i "s|^;error_log =.*$|error_log = /var/log/php/php-error.log|" /usr/local/etc/php/php.ini && \
    sed -i 's/listen = 9000/listen = 9008/' /usr/local/etc/php-fpm.d/zz-docker.conf

# Composer - move this!!
RUN cd ~ && \
    curl -sS https://getcomposer.org/installer -o composer-setup.php && \
    php composer-setup.php --install-dir=/usr/local/bin --filename=composer

# Docker
EXPOSE 9008
WORKDIR /var/www/html
