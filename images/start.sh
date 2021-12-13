#!/bin/bash

# start php process in background
/usr/sbin/php-fpm -c /etc/php/fmp 

# start  nginx daemon
nginx -g 'daemon off;'
 
