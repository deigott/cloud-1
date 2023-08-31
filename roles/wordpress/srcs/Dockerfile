FROM debian:latest

RUN apt-get update && apt-get install wget mariadb-client php-cli php-mbstring php-mysql php-gd php-xml php8.2-fpm sendmail -y

#Install wp-cli
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

#Config php-fpm
RUN sed '/^listen =/s/\/run\/php\/php8.2-fpm.sock/9000/' -i /etc/php/8.2/fpm/pool.d/www.conf


#Prepare for wp setup
RUN mkdir -p /var/www/wordpress
COPY ./conf/install.sh /var/www/wordpress/install.sh
RUN touch /var/log/php8.2-fpm.log
RUN chown -R www-data:www-data /var/www/wordpress /run/php /var/log/php8.2-fpm.log

#Wordpress config
USER www-data

WORKDIR /var/www/wordpress

ENTRYPOINT ["/bin/sh", "/var/www/wordpress/install.sh"]
