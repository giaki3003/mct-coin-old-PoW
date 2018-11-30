FROM debian:stretch
LABEL maintainer="MCT Developers <dev@mctpay.org>"
LABEL description="Dockerised MCTCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
