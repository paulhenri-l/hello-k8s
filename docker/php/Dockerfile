#----------------------------------- BUILD ------------------------------------#
FROM paulhenrill/php-fpm:latest as build
WORKDIR /app

COPY composer.json composer.lock ./
RUN composer install --no-ansi --no-dev --no-interaction --no-scripts

#------------------------------------ APP -------------------------------------#
FROM paulhenrill/php-fpm:latest
WORKDIR /app

# Conf
COPY docker/php/php.production.ini /usr/local/etc/php/php.ini
COPY docker/php/opcache.ini /usr/local/etc/php/conf.d/opcache.ini
COPY docker/php/www.conf /usr/local/etc/php-fpm.d/www.conf

# App
COPY --chown=82:82 --from=build /app/vendor /app/vendor
COPY --chown=82:82 . /app

RUN mkdir /var/log/shared
RUN composer dump-autoload --optimize

#----------------------------------- START ------------------------------------#
COPY ./docker/php/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
