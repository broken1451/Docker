#!/bin/bash

echo "iniciando contenedor"
echo "INICIANDO" > /var/www/html/init.html
apachectl -DFOREGROUND
