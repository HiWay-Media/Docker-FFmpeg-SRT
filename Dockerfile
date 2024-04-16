# syntax=docker/dockerfile:1
FROM debian:10.10-slim
#
MAINTAINER Allan-Nava
RUN build.sh
CMD ["/bin/bash"]