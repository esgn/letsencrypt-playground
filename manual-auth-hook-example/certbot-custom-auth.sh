#!/bin/bash
# THIS SCRIPT UPLOADS CHALLENGE FILE TO THE DMZ INSTANCES

domain="${CERTBOT_DOMAIN%.domain*}"

sudo -H -u srv_user ssh -t -F /home/user/.ssh/config $domain "touch /var/www/html/.well-known/acme-challenge/$CERTBOT_TOKEN"
sudo -H -u srv_user ssh -t -F /home/user/.ssh/config $domain "echo $CERTBOT_VALIDATION >> /var/www/html/.well-known/acme-challenge/$CERTBOT_TOKEN"
