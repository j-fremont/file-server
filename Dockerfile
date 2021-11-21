FROM nginx:latest

RUN mkdir /data

COPY ./default.conf /etc/nginx/conf.d

COPY ./.htpasswd /etc/nginx

