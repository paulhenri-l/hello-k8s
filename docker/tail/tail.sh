#!/bin/sh

# Wait until the pipe - created by the PHP app container
# and shared via a tmp volume - is created
while [ ! -e /app/storage/logs/laravel.log ]; do
    sleep 0.2
done

exec tail -f /app/storage/logs/laravel.log
