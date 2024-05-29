FROM nginx:1.10.1-alpine
COPY proxy.conf /etc/nginx/conf.d/
CMD ["nginx", "-g", "daemon off;"]