FROM ubuntu:latest
RUN apt -y update
RUN apt -y upgrade
RUN apt -y  install php-cli unzip curl php-mbstring php-xml
RUN cd /tmp
RUN curl -sS https://getcomposer.org/installer -o composer-setup.php
RUN php composer-setup.php --install-dir=/usr/local/bin --filename composer
RUN composer selfupdate
RUN cd /opt
CMD composer create-project laravel/laravel example-app && cd example-app && php ./artisan sail:install --with=pgsql,redis

