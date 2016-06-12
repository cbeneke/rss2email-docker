#!/bin/bash

if [[ $? -ne 2 ]]; then
    echo "Usage: $0 ID"
    exit 1
fi

ID=${1}

docker run --rm -v "/srv/docker/volumes/rss2email/${ID}/data:/opt/rss2email/data" -v "/srv/docker/volumes/rss2email/${ID}/config.py:/opt/rss2email/config.py" rss2email:latest
