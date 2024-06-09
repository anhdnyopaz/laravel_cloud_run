FROM infoecnet/php8.1-laravel-alpine

COPY . .

RUN composer install

