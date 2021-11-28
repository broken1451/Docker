FROM centos:7

RUN yum install httpd -y

WORKDIR /var/www/html

# COPY source dest
# COPY beryllium /var/www/html
# ADD startbootstrap-freelancer-master /var/www/html
# COPY startbootstrap-freelancer-master /var/www/html
# COPY startbootstrap-freelancer-master html
COPY startbootstrap-freelancer-master .

# ENV contenido pruebaxD
ENV contenido=pruebaxD
RUN echo "${contenido}" > /var/www/html/prueba.html
EXPOSE 8080


# ejecuta el servicio de apache en primer plano
CMD ["apachectl","-DFOREGROUND"] 