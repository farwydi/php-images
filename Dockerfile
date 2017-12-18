FROM php:7.1-fpm

RUN apt-get update \
    && apt-get install -y libpq-dev zlib1g-dev nginx git \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install pdo pdo_pgsql \
    && docker-php-ext-install zip

RUN mkdir /artifact