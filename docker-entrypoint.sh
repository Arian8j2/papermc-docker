#!/bin/sh
set -e

addgroup -S -g $GID paper 2>/dev/null && adduser -S -D -G paper -u $UID paper
chown -R $UID:$GID /home/paper
exec tini -- /usr/local/bin/gosu paper "$@"
