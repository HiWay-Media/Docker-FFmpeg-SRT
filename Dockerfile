# syntax=docker/dockerfile:1
FROM ubuntu:22.04
MAINTAINER Allan-Nava
#
#ENV DEBIAN_FRONTEND noninterac1tive
ENV TZ=Etc/UTC
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8
## for apt to be noninteractive
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true
#
RUN groupadd -r ies --gid=1280 && useradd -r -g ies --uid=1280 --create-home --shell /bin/bash ies
# switch user from 'root' to ies and also to the home directory that it owns 
USER ies
WORKDIR /home/ies
#
## preesed tzdata, update package index, upgrade packages and install needed software
RUN truncate -s0 /tmp/preseed.cfg; \
    echo "tzdata tzdata/Areas select Europe" >> /tmp/preseed.cfg; \
    echo "tzdata tzdata/Zones/Europe select Berlin" >> /tmp/preseed.cfg; \
    debconf-set-selections /tmp/preseed.cfg && \
    rm -f /etc/timezone /etc/localtime && \
    apt-get update && \
    apt-get install -y tzdata
#
#WORKDIR /app
COPY . .
RUN bash -x build.sh
#
CMD ["/bin/bash"]