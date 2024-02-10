# DOCKER HUB: https://hub.docker.com/_/mysql/
FROM mysql:8.3.0

COPY ./create_tables.sql /docker-entrypoint-initdb.d/1.sql

# Docker
EXPOSE 3306
