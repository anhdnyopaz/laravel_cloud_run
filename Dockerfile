FROM infoecnet/php8.1-laravel-alpine:v1

COPY . /app
WORKDIR /app
RUN composer install

RUN ./vendor/bin/rr get-binary


