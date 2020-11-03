#!/bin/sh
set -e

if [ ! -p /app/storage/logs/laravel.log ]; then
    mkfifo /app/storage/logs/laravel.log
    chmod 777 /app/storage/logs/laravel.log
fi

php artisan optimize
php artisan view:cache

exec "$@"
