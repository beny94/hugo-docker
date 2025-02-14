#!/bin/bash

USERID=${USERID:-1000}
GROUPID=${GROUPID:-1000}

usermod -u ${USERID} hugo
groupmod -g ${USERID} hugo

chown -R hugo:hugo /home/hugo

exec "$@"

