# FROM centos:7

# RUN \ 
#     yum install -y httpd \ 
#     php \ 
#     php-cli \ 
#     php-common 

# RUN echo "<?php phpinfo(); ?>" > /var/www/html/hola.php

# EXPOSE 80

# CMD ["apachectl","-DFOREGROUND"] 

# FROM debian
# RUN apt-get update && apt-get install -y 
# RUN apt-get install apache2 -y
# # RUN apt-get install -y php7.4 php7.4-cli php7.4-common
# # RUN echo "<?php phpinfo(); ?>" > /var/www/html/hola.php

# EXPOSE 80

# # ENTRYPOINT ["/usr/sbin/apache2"]
# EXPOSE 80
# CMD ["apache2-foreground"]

FROM debian:jessie
# COPY web /var/www/html
RUN apt-get update && \
    apt-get -yq install \
	apache2 

# RUN apt-get -y update && apt-get install -y \
#     php7.0 \
#     php7.0-fpm \
#     php7.0-mysql \
#     php7.0-json \
#     php7.0-curl \
#     php7.0-sqlite3 \
#     php7.0-xml \
#     php7.0-bcmath \
#     php7.0-zip \
#     php7.0-mbstring \
#     php-xdebug \
#     php-ast

# RUN apt install software-properties-common -y
# RUN add-apt-repository ppa:ondrej/php
# RUN apt install php7.3 php7.3-common php7.3-opcache php7.3-cli php7.3-gd php7.3-curl php7.3-mysql -y
# RUN  apt install php libapache2-mod-php -y
# RUN apt install php-fpm -y

RUN apt-get -y update && apt-get install -y 
RUN echo "deb http://packages.dotdeb.org jessie all" >> /etc/apt/sources.list.d/dotdeb.org.list && \
  echo "deb-src http://packages.dotdeb.org jessie all" >> /etc/apt/sources.list.d/dotdeb.org.list && \
  wget -O- http://www.dotdeb.org/dotdeb.gpg | apt-key add - && \
  apt-get update && \
  apt-get install -y --no-install-recommends \
  apache2 \
  libapache2-mod-php7.0 \
  php7.0-fpm \
  php7.0-mysql \
  php7.0-gd \
  php7.0-imagick \
  php7.0-dev \
  php7.0-curl \
  php7.0-opcache \
  php7.0-cli \
  php7.0-sqlite \
  php7.0-intl \
  php7.0-tidy \
  php7.0-imap \
  php7.0-json \
  php7.0-pspell \
  php7.0-recode \
  php7.0-common \
  php7.0-sybase \
  php7.0-sqlite3 \
  php7.0-bz2 \
  php7.0-mcrypt \
  php7.0-common \
  php7.0-apcu-bc \
  php7.0-memcached \
  php7.0-redis \
  php7.0-xml \
  php7.0-shmop \
  php7.0-mbstring \
  php7.0-zip \
  php7.0-soap


RUN echo "<?php phpinfo(); ?>" > /var/www/html/info.php
EXPOSE 80
CMD ["apachectl","-DFOREGROUND"] 
# CMD ["php-fpm"]