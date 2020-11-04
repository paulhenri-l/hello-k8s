#!/bin/sh
set -e

php artisan optimize
php artisan view:cache

exec "$@"
