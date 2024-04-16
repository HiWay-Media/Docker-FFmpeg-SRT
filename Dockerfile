# syntax=docker/dockerfile:1
FROM debian:10.10-slim
#
MAINTAINER Allan-Nava
#
WORKDIR /app
COPY . .
RUN bash -x build.sh
#
CMD ["/bin/bash"]