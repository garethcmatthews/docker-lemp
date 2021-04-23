FROM nginx:1.19.2

# System
RUN apt-get update && \
    apt-get install --no-install-recommends --yes nano

# Nginx
COPY ./default.conf /etc/nginx/conf.d
