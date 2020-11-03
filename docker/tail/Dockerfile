# https://pracucci.com/php-on-kubernetes-application-logging-via-unix-pipe.html
FROM alpine:3.8

RUN mkdir /var/log/shared
ADD ./docker/tail/tail.sh /tail.sh
RUN chmod +x /tail.sh

STOPSIGNAL SIGKILL

CMD [ "/tail.sh" ]
