# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV DEBIAN_FRONTEND noninterac1tive
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8
#
MAINTAINER Allan-Nava
#
#WORKDIR /app
COPY . .
RUN bash -x build.sh
#
CMD ["/bin/bash"]