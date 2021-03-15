# LEMP (+Node/Angular) Docker Application

A LEMP based Docker application for use in development.

## Nginx, PHP7.4/8.0, MySQL, phpMyadmin

## Containers
* **lempserver-composer** - composer
* **lempserver-database** - MySQL 8
* **lempserver-nginx** - Nginx
* **lempserver-php** - PHP7.4, nano, composer
* **lempserver-phpmyadmin** - phpMyadmin

## PHP version
To change the PHP version update the docker file located at ./docker/php/Dockerfile

### Scripts
* **docker/docker-cleanup.sh** Script to cleanup docker tmp folder (data and logs)

### URL's
* **Angular** - http://localhost:4200
* **Application** - http://localhost
* **PhpMyadmin** - http://localhost:8080/

### Start LEMP
docker-compose up -d --build mysql nginx php phpmyadmin 

### Bash
docker exec -it lempserver-mysql /bin/bash  
docker exec -it lempserver-nginx /bin/bash  
docker exec -it lempserver-php /bin/bash  
docker exec -it lempserver-phpmyadmin /bin/bash  

### Composer
docker-compose run --rm composer create-project mezzio/mezzio-skeleton ./application/skeleton  
**move files from skeleton subfolder to ./application-backend after download**  

docker-compose run --rm composer require laminas/laminas-config

### Angular/Node
docker-compose run --rm --publish 4200:4200 node bash

### ANGULAR
ng new hello-world --skip-git  
**move files from hello-world subfolder to ./application-frontend after download - exclude node_modules**  

npm install  
**node_nodules folder is retained on the container - slower builds/faster angular runs - npm update is run at startup**  

**Enable Angular file change watch**  

    "architect": {
        "build": {
            "options": {
                "poll": 1000,

**Run/Watch**  
docker-compose run --name lempserver-node --publish 4200:4200 node bash  
npm install (keeping this on the container results in faster builds)  
ng serve --host 0.0.0.0 --port 4200  

docker start lempserver-node  
docker exec -it lempserver-node /bin/bash  
