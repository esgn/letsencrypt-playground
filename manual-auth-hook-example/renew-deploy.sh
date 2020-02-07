#!/bin/bash

CERTBOT_DIR="/opt/certbot/"
SCRIPTS_DIR="/home/scripts/certbot"

cd $CERTBOT_DIR
sudo ./certbot-auto certonly --force-renew -t -d domain.com --manual --manual-auth-hook $SCRIPTS_DIR/certbot_custom_auth.sh --manual-public-ip-logging-ok
cd $SCRIPTS_DIR
sudo ./copy_ssl_certs_to_dmz.sh
