#!/bin/bash

cd /opt/rss2email/

if [[ -n $R2E_INIT ]]; then
    ./r2e new $R2E_EMAIL
    for feed in $R2E_FEEDS; do
        ./r2e add $feed
    done
    ./r2e run --no-send
elif [[ -n $R2E_ADD ]]; then
    ./r2e run
    for feed in $R2E_FEEDS; do
        ./r2e add $feed
    done
    ./r2e run --no-send
else
    ./r2e run
fi
