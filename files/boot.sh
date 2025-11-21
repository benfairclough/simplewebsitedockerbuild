/usr/bin/sh
RANDOM="$(openssl rand -base64 6)"
sed -i -e "s/Welcome/$RANDOM-Welcome/g" /var/www/html/index.html 
/usr/sbin/nginx -g "daemon off;"