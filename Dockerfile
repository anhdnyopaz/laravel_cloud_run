FROM infoecnet/php8.1-laravel-alpine:v1
WORKDIR /app

COPY composer.json composer.lock /app/

RUN composer --optimize-autoloader --no-scripts --prefer-dist

RUN ./vendor/bin/rr get-binary

COPY . /app

RUN composer dump-autoload

