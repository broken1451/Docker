FROM centos:7

COPY nginx.repo /etc/yum.repos.d/nginx.repo

RUN \
    yum -y install nginx --enablerepo=nginx &&                \
    yum -y install https://repo.ius.io/ius-release-el7.rpm && \
    yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    yum -y install                                            \
    php71u-fpm \
    php71u-cli \
    php71u-mysqlnd \
    php71u-soap \
    php71u-xml \
    php71u-zip \
    php71u-json \
    php71u-mcrypt \
    php71u-msstring \
    php71u-zip \
    php71u-gd \
    --enablerepo=ius-archive && yum clean all

EXPOSE 80 443

VOLUME /var/www/html /var/log/nginx /var/log/php-fpm /var/lib/php-fpm

COPY nginx.config.conf /etc/nginx/conf.d/default.conf

COPY  start.sh /start.sh

# permisos de ejecucion para q no se queje 
RUN chmod +x /start.sh 

CMD /start.sh
