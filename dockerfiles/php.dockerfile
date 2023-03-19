FROM php:8.0-fpm-alpine
 
WORKDIR /var/www/html
 
COPY src .

# 저 이미지 내부에서 사용되는 npm install 같은거
RUN docker-php-ext-install pdo pdo_mysql
 
RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

USER laravel 

# Permission denied 방지
RUN chown -R laravel:laravel .