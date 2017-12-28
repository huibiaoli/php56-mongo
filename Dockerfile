FROM php:5.6

RUN apt-get update && apt-get install -y libssl-dev && rm -rf /var/lib/apt/lists/*

RUN pecl install mongo-1.6.14 \
    && docker-php-ext-enable mongo
