# syntax=docker/dockerfile:1
FROM debian:10.10-slim
#
MAINTAINER Allan-Nava
#
COPY . .
RUN build.sh
#
CMD ["/bin/bash"]