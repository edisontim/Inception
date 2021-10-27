#/bin/sh

mkdir -p /run/php

/usr/sbin/php-fpm7.3 --fpm-config /etc/php/7.3/fpm/php-fpm.conf

