FROM nginx:1.16.0-alpine

COPY docker/nginx/conf/nginx.conf /etc/nginx/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
