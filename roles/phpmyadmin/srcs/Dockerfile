FROM debian:latest

RUN apt update && apt install wget openssl php-mbstring php-mysql php8.2-mysql php8.2-fpm mariadb-client -y

#Downloading and preparing phpmyadmin
RUN mkdir -p /var/www/phpmyadmin
WORKDIR /var/www/phpmyadmin
RUN wget https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.tar.gz

RUN tar xvf phpMyAdmin-latest-all-languages.tar.gz --strip-components=1

COPY ./conf/config.inc.php .
RUN chmod 660 config.inc.php

#Config php-fpm
RUN sed '/^listen =/s/\/run\/php\/php8.2-fpm.sock/9001/' -i /etc/php/8.2/fpm/pool.d/www.conf

#Creating dirs/files and setting perms
RUN mkdir /run/php
RUN touch /var/log/php8.2-fpm.log
RUN chown -R www-data:www-data /var/www/phpmyadmin /run/php /var/log/php8.2-fpm.log

USER www-data

ENTRYPOINT ["/usr/sbin/php-fpm8.2", "--nodaemonize"]
