FROM nginx:1.19-alpine

ENV PHP_FPM_HOST 127.0.0.1
ENV PHP_FPM_PORT 9000

COPY ./docker/nginx/entrypoint.sh /entrypoint.sh
COPY ./docker/nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./docker/nginx/default.conf /etc/nginx/conf.d/default.conf.tpl
COPY --chown=101:101 ./public ./app/public

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
