# Build Geth in a stock Go builder container
FROM golang:1.10-alpine as builder

RUN apk add --no-cache make gcc musl-dev linux-headers

ADD . /efsn
RUN cd /efsn && make all

# Pull all binaries into a second stage deploy alpine container
FROM alpine:latest

RUN apk add --no-cache ca-certificates
COPY --from=builder /efsn/build/bin/* /usr/local/bin/

EXPOSE 8545 8546 40404 40404/udp


ENV nodekeyhex=""
CMD exec ./bootnode -nodekeyhex $nodekeyhex

EXPOSE 40408/udp
EXPOSE 40407/udp
