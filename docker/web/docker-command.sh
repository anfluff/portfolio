#!/bin/sh

envsubst '${APP_VERSION}' < /var/www/app/web.nginx.conf > /etc/nginx/conf.d/default.conf

nginx -g 'daemon off;'
