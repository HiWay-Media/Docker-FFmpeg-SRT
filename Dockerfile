# syntax=docker/dockerfile:1
FROM ubuntu:22.04
#
MAINTAINER Allan-Nava
#
#WORKDIR /app
COPY . .
RUN bash -x build.sh
#
CMD ["/bin/bash"]