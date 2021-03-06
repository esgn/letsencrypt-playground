#!/bin/bash

CERTBOT_DIR="/opt/certbot/"
SCRIPTS_DIR="/home/scripts/certbot"

cd $CERTBOT_DIR
sudo ./certbot-auto certonly --force-renew -t -d domain.com --manual --manual-auth-hook $SCRIPTS_DIR/certbot-custom-auth.sh --manual-public-ip-logging-ok
cd $SCRIPTS_DIR
sudo ./copy-ssl-certs-to-dmz.sh
