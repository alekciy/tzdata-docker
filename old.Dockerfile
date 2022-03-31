FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
    php-cli \
    php-xml \
    php-dev

RUN pecl install timezonedb-2010.9 && \
    echo "extension=timezonedb.so" > /etc/php/7.0/mods-available/timezonedb.ini && \
    ln -s /etc/php/7.0/mods-available/timezonedb.ini /etc/php/7.0/cli/conf.d/10-timezonedb.ini


