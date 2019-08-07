#!/bin/sh

HOST=orthen.net
DIR=../../web # might sometimes be empty!

hugo && rsync -e "ssh -i $WEB_HOSTING_SSH_KEY_LOCATION" --numeric-ids -rlvz --delete --exclude=/.well-known --exclude=.htaccess public/ ${WEB_HOSTING_USER_ID}@${HOST}:~/${DIR}

exit 0
