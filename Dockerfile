FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update; \
    apt-get install -y make texlive-full; \
    apt-get -y clean; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*;

WORKDIR /workdir