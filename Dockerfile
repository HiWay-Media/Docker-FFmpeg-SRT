# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV DEBIAN_FRONTEND noninterac1tive
#
MAINTAINER Allan-Nava
#
#WORKDIR /app
COPY . .
RUN bash -x build.sh
#
CMD ["/bin/bash"]