FROM ubuntu:xenial

MAINTAINER Morpheus Labs

ENV PATH=/usr/lib/go-1.9/bin:$PATH

RUN \
  apt-get update && apt-get upgrade -q -y && \
  apt-get install -y --no-install-recommends golang-1.9 git make gcc libc-dev ca-certificates && \
  git clone --depth 1 https://github.com/FusionFoundation/efsn && \
  (cd go-ethereum && make geth) && \
  cp go-ethereum/build/bin/geth /geth && \
  apt-get remove -y golang-1.9 git make gcc libc-dev && apt autoremove -y && apt-get clean && \
  rm -rf /go-ethereum

ENV address=""
ENV bootnodeId=""
ENV bootnodeIp=""
ENV networkId=""
COPY ./entrypoint.sh /
RUN  chmod +x /entrypoint.sh
EXPOSE 8545
EXPOSE 40404
ENTRYPOINT ["/entrypoint.sh"]
