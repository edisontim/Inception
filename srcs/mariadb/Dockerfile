FROM debian:buster

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install mariadb-server -y

RUN apt-get install vim -y


COPY ./setup.sh /
COPY ./my.cnf /etc/mysql
COPY ./wordpress.sql /
EXPOSE 3306

CMD bash ./setup.sh
