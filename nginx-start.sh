#!/bin/bash

curl -o /usr/share/nginx/html/resume.json $RESUME_JSON_URL

##generate file
/start.sh

##adjust directory (need to fix)
cp -R /usr/share/nginx/html/* /var/www/html/

##run ngynx
nginx -g 'daemon off;'
