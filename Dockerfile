# syntax=docker/dockerfile:1
FROM ubuntu:22.04
MAINTAINER Allan-Nava
#
ENV DEBIAN_FRONTEND noninterac1tive
ENV TZ=Etc/UTC
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8
#
#WORKDIR /app
COPY . .
RUN bash -x build.sh
#
CMD ["/bin/bash"]