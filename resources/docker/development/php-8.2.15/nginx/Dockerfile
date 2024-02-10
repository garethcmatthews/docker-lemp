# DOCKER HUB: https://hub.docker.com/_/nginx/
FROM nginx:1.25.3

# System
RUN apt-get update && \
    apt-get install --no-install-recommends --yes nano

# Nginx
COPY ./default.conf /etc/nginx/conf.d

# Docker
EXPOSE 8080
WORKDIR /var/www/html
