FROM nginx:1.27.4-alpine
ARG SERVER
RUN sed -i "s/\$SERVER/${SERVER}/g" https-proxy.conf
COPY https-proxy.conf /etc/nginx/conf.d/
CMD ["nginx", "-g", "daemon off;"]