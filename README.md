# LEMP Docker Application

A LEMP based Docker application for use in development.

## Nginx, PHP7.4/8.0, MySQL, phpMyadmin

## Containers
* **lempserver-database** - MySQL
* **lempserver-nginx** - Nginx
* **lempserver-php** - PHP7.4, composer, nano
* **lempserver-phpmyadmin** - phpMyadmin

## PHP version
To change the PHP version update the docker file located at ./docker/php/Dockerfile

### Scripts
* **docker/scripts/flush-dockertmp-folder.sh** Script to cleanup docker tmp folder (data and logs)

### URL's
* **Application** - http://localhost
* **PhpMyadmin** - http://localhost:8080/

### Bash
docker exec -it lempserver-mysql /bin/bash  
docker exec -it lempserver-nginx /bin/bash  
docker exec -it lempserver-php /bin/bash  
docker exec -it lempserver-phpmyadmin /bin/bash  
