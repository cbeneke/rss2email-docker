#!/bin/bash

if [[ $? -lt 2 ]]; then
    echo "Usage: $0 ID feed-url [feed-url [feed-url ..]]"
    exit 1
fi

ID=$1
shift

docker run --rm -v "/srv/docker/volumes/rss2email/${ID}/data:/opt/rss2email/data" -v "/srv/docker/volumes/rss2email/${ID}/config.py:/opt/rss2email/config.py"  -e "R2E_ADD=true" -e "R2E_FEEDS=$@" rss2email:latest
