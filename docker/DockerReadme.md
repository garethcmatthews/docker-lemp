
# LEMP Docker Application

A LEMP based Docker application for use in development.

### Containers
> **lemp-nginx** - Nginx  
> **lemp-php**: PHP, curl, nano, composer  
> **lemp-mysql**: MySQL 8  
> **lemp-phpmyadmin**: phpMyadmin  

### PHP Versions
> PHP 7.4.33  
> PHP 8.0.30, 8.1.27, 8.2.15, PHP 8.3.2

### Required files
Copy both the files '.env' and 'docker-compose.yaml' from the required PHP versions folder to the project root.

> Example  
> Copy ./docker/development/php-8.3.2/.env to ./  
> Copy ./docker/development/php-8.3.2/docker-compose.yaml to ./

### Running Docker

#### Run Docker
> docker compose up -d

#### To Rebuild containers after any config changes
> docker compose up -d --build 

#### Access NGINX box...
> docker exec -it lemp-nginx /bin/bash 
#### Access PHP box...
> docker exec -it lemp-php /bin/bash 
#### Access MySQL box...
> docker exec -it lemp-mysql /bin/bash  
#### Access PHPMyAdmin box...
> docker exec -it lemp-phpmyadmin /bin/bash 
