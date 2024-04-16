# syntax=docker/dockerfile:1
FROM debian:10.10-slim
#
MAINTAINER Allan-Nava
#
WORKDIR /app
COPY . .
RUN build.sh
#
CMD ["/bin/bash"]