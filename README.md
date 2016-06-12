# rss2mail-docker
rss2email dockerized system based on my pritunl/archlinux:latest

Basically you need two directories get the docker running:
* /srv/docker/volumes/rss2email/${ID}/
* /opt/rss2email/

whereby the first one must have the following structure 

    13:37 root [services] /srv/docker/volumes/rss2email
    # tree
    .
    |-- test1
    |   |-- config.py
    |   `-- data
    |       `-- feeds.dat
    `-- test2
        |-- config.py
        `-- data
            `-- feeds.dat

You do NOT need to create the feeds.dat, but the config.py and add the data-dir per ID.

The second folder just need the files of the scripts folder to get the given systemd-files to work. You should activate the systemd-timers with the ID as paremeter (e.g. systemctl start rss2email@test1.timer)

To get started use the new.sh and add.sh scripts:

    /opt/rss2mail/new.sh ID your@email.com
    /opt/rss2mail/add.sh ID http://my.rss/feed https://my.second.rss/feed
