#!/bin/sh

HOST=orthen.net
DIR=../../web # might sometimes be empty!

hugo && rsync -rlvz public/ ${WEB_HOSTING_USER_ID}@${HOST}:~/${DIR}

exit 0
