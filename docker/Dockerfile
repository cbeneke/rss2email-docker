FROM pritunl/archlinux:latest
MAINTAINER Christian Beneke <c.beneke@wirelab.org>

RUN pacman -Syy && \
    pacman -S --noconfirm --needed python2 && \
    find /etc/ -type f -name '*.pac*' -exec rm {} \; && \
    rm -rf /var/cache/pacman/pkg/*

ADD files /opt/rss2email
ADD ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
