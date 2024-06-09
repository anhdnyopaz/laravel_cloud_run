FROM infoecnet/php8.1-laravel-alpine:v1

WORKDIR /app
COPY composer.json composer.lock /app/

RUN composer install --no-scripts

RUN ./vendor/bin/rr get-binary

COPY . /app

RUN composer dump-autoload

