FROM infoecnet/php8.1-laravel-alpine:v1

WORKDIR /app
COPY composer.json composer.lock /app/

RUN composer install

RUN ./vendor/bin/rr get-binary

COPY . /app

