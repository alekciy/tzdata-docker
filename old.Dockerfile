FROM php:7.0-cli-alpine

RUN apk add --no-cache --virtual .phpize-deps $PHPIZE_DEPS \
 && pecl install timezonedb-2010.9 \
 && docker-php-ext-enable timezonedb

RUN apk add --no-cache bash

