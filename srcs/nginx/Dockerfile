FROM debian:buster

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install sysvinit-utils

RUN apt-get -y install nginx

RUN apt-get install openssl

# COPY THE NGINX CONF FILE TO THE DOCKER
COPY ./tools/sites-enabled/wordpress.conf /etc/nginx/sites-enabled
COPY ./tools/nginx.conf /etc/nginx/
COPY ./tools/setup.sh /

RUN openssl req -x509 -nodes -days 30 -subj "/C=BE/ST=Belgium/L=Brussels/O=42 Network/OU=s19/CN=tedison" -newkey rsa:4096 -keyout /etc/ssl/nginx-selfsigned.key -out /etc/ssl/nginx-selfsigned.crt;

CMD bash /setup.sh

