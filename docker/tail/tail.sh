#!/bin/sh

while [ ! -e $WATCHED_FILE ]; do
    sleep 0.2
done

exec tail -f $WATCHED_FILE
