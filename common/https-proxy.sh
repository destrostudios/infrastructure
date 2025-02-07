RUN sed -i "s/\$SERVER/${SERVER}/g" /etc/nginx/conf.d/https-proxy.conf
nginx -g "daemon off;"