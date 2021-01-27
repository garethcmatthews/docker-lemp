FROM php:8.0.0-fpm

# System
RUN apt-get update && \
    apt-get install --no-install-recommends --yes nano

# PHP (https://github.com/mlocati/docker-php-extension-installer)
RUN apt-get install --no-install-recommends --yes libzip-dev && \
    apt-get install --no-install-recommends --yes unzip && \
    docker-php-ext-install opcache && \
    docker-php-ext-install mysqli && \
    docker-php-ext-install zip

RUN cp /usr/local/etc/php/php.ini-development /usr/local/etc/php/php.ini && \
    sed -i "s|^;date.timezone =.*$|date.timezone = Europe/London|" /usr/local/etc/php/php.ini && \
    sed -i "s|display_startup_errors =.*$|display_startup_errors = On|" /usr/local/etc/php/php.ini && \
    sed -i "s|display_errors =.*$|display_errors = On|" /usr/local/etc/php/php.ini && \
    sed -i "s|^;error_log =.*$|error_log = /var/log/php/php-error.log|" /usr/local/etc/php/php.ini

# Docker
EXPOSE 9000
WORKDIR /var/www
