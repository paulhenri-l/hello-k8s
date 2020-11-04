#!/bin/sh

while [ ! -e /app/storage/logs/laravel.log ]; do
    sleep 0.2
done

exec tail -f /app/storage/logs/laravel.log
