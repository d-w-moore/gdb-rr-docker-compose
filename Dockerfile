FROM ubuntu:18.04
RUN  apt update
RUN  apt -y install g++ gdb rr
RUN  useradd -d /home/myuser -m -s /bin/bash myuser
USER myuser
WORKDIR /home/myuser
COPY rrdemo.cc scanf.c /tmp/
RUN  g++ -g -o rrdemo /tmp/rrdemo.cc
RUN  gcc -g -o scanf  /tmp/scanf.c
