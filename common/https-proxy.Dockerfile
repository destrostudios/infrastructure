FROM nginx:1.27.4-alpine
ARG SERVER
COPY https-proxy.conf /etc/nginx/conf.d/
RUN sed -i "s/\$SERVER/${SERVER}/g" /etc/nginx/conf.d/https-proxy.conf
CMD ["nginx", "-g", "daemon off;"]