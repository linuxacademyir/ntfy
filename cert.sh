#!/bin/bash
#########################################################
#
# letsencrypt certificate permissions for ntfy
# Replace lab01.geek2gether.com with your domain name
#####################################################

echo "setting up permissions"

chmod 0755 /etc/letsencrypt/
chmod 0711 /etc/letsencrypt/live/
chmod 0750 /etc/letsencrypt/live/YOUR_DOMAIN.com/
chmod 0711 /etc/letsencrypt/archive/
chmod 0750 /etc/letsencrypt/archive/YOUR_DOMAIN.com/
chmod 0640 /etc/letsencrypt/archive/YOUR_DOMAIN.com/*.pem
chmod 0640 /etc/letsencrypt/archive/YOUR_DOMAIN.com/privkey*.pem

chown root:root /etc/letsencrypt/
chown root:root /etc/letsencrypt/live/
chown root:ntfy /etc/letsencrypt/live/YOUR_DOMAIN.com/
chown root:root /etc/letsencrypt/archive/
chown root:ntfy /etc/letsencrypt/archive/YOUR_DOMAIN.com/
chown root:ntfy /etc/letsencrypt/archive/lYOUR_DOMAIN.com/*.pem
chown root:ntfy /etc/letsencrypt/archive/YOUR_DOMAIN.com/privkey*.pem

echo "Permissions succesfuly set. Enjoy!"
