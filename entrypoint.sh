#!/bin/bash
set -o monitor

rabbit_pid=/var/lib/rabbitmq/mnesia/rabbitmq.pid
RABBITMQ_PID_FILE=$rabbit_pid exec /usr/local/bin/docker-entrypoint.sh "$@" &

sleep 5

rabbitmqctl wait $rabbit_pid

echo
    for f in /opt/init/*; do
        case "$f" in
            *.sh)     echo "$0: running $f"; . "$f" ;;
            *)        echo "$0: ignoring $f" ;;
        esac
        echo
    done

jobs
fg %1