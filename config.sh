#!/bin/bash

docker-compose up -d

docker exec -it nomePrj-php-fpm composer install

docker exec -it nomePrj-php-fpm php artisan migrate

docker exec -it nomePrj-php-fpm php artisan passport:install

