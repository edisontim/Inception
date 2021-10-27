FROM debian:buster



#update and get new packages
RUN apt-get update

RUN apt-get upgrade -y

RUN apt-get install sysvinit-utils

#Install PHP.
RUN			apt-get -y install php-cgi php-common php-fpm php-pear php-mbstring
RUN			apt-get -y install php-zip php-net-socket php-gd php-xml-util php-gettext php7.3-mysql php-bcmath php-mysql


#Server setup script

#This is the php configuration file which will make php listen on port 9000 for requests sent by nginx when there are php pages to show
COPY ./tools/www.conf /etc/php/7.3/fpm/pool.d

#This is the fpm configuration file which will make php-fpm run on the foreground to keep our docker running instead of stopping immediatly (whithout sleep infinity)
COPY ./tools/php-fpm.conf /etc/php/7.3/fpm

COPY ./tools/setup.sh /

# Change in the php.ini file to allow php access to environment variables
COPY ./tools/php.ini /etc/php/7.3/fpm

#setup script
CMD bash /setup.sh