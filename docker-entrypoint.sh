#!/bin/bash
echo "Startup script executing"
echo "ORIGIN - ${ORIGIN}"
echo "ACTIONS - ${ACTIONS}"

sed -i "s/##ORIGIN##/${ORIGIN}/g" /usr/share/nginx/html/index.html
sed -i "s/##ACTIONS##/${ACTIONS}/g" /usr/share/nginx/html/index.html

nginx -g "daemon off;"