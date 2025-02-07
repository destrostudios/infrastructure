FROM nginx:1.27.4-alpine
COPY https-proxy.conf /etc/nginx/conf.d/
COPY https-proxy.sh ./
ENTRYPOINT ["sh", "https-proxy.sh"]