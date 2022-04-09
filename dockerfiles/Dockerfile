FROM nginx:1.21-alpine

COPY confs/sites-available /etc/nginx/sites-available

COPY dockerfiles/entrypoint.sh /nginx-entrypoint.sh

RUN ["/nginx-entrypoint.sh"]
