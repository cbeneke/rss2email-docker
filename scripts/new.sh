#!/bin/bash

if [[ $# -ne 2 ]]; then
    echo "Usage: $0 ID your@email"
    exit 1
fi

id=${1}
mail=${2}

docker run --rm -v "/srv/docker/volumes/rss2email/${id}/data:/opt/rss2email/data" -v "/srv/docker/volumes/rss2email/${id}/config.py:/opt/rss2email/config.py"  -e "R2E_INIT=true" -e "R2E_EMAIL=${mail}" rss2email:latest
