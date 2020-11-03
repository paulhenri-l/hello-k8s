#!/bin/sh

set -e

# https://serverfault.com/a/919212
envsubst '${PHP_FPM_HOST} ${PHP_FPM_PORT}' < /etc/nginx/conf.d/default.conf.tpl > /etc/nginx/conf.d/default.conf

exec "$@"
