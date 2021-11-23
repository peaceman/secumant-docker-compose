#!/usr/bin/env sh

env >> /etc/environment

if test -n "$CRON_SCHEDULE"; then
    echo "$CRON_SCHEDULE $@" >> /var/spool/cron/crontabs/root
    exec crond -f -l 2
else
    exec "$@"
fi
