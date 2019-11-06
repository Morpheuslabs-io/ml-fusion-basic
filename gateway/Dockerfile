FROM ubuntu:xenial

MAINTAINER Tim Zöller <mail@tim-zoeller.de>

RUN apt-get update \
     && apt-get install -y wget \
     && rm -rf /var/lib/apt/lists/*

WORKDIR "/opt"
ARG binary
RUN wget "https://gethstore.blob.core.windows.net/builds/geth-linux-amd64-1.8.13-225171a4.tar.gz"
RUN tar -xzvf geth-linux-amd64-1.8.13-225171a4.tar.gz --strip 1
RUN rm geth-linux-amd64-1.8.13-225171a4.tar.gz

ENV address=""
ENV bootnodeId=""
ENV bootnodeIp=""
ENV networkId=""
COPY ./entrypoint.sh /
RUN  chmod +x /entrypoint.sh
EXPOSE 8545
EXPOSE 30303
ENTRYPOINT ["/entrypoint.sh"]

