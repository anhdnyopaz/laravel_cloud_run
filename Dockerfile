FROM spiralscout/roadrunner:2024.1

COPY . /app
WORKDIR /app
RUN composer install
RUN ./vendor/bin/rr get-binary



