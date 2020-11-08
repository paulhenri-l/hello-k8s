# https://pracucci.com/php-on-kubernetes-application-logging-via-unix-pipe.html
FROM alpine:3.8

ENV WATCHED_FILE tmp/laravel.log

ADD ./docker/tail/tail.sh /tail.sh
RUN chmod +x /tail.sh

STOPSIGNAL SIGKILL

CMD [ "/tail.sh" ]
