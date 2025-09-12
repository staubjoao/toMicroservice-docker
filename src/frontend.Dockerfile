FROM nginx:alpine
COPY front usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf