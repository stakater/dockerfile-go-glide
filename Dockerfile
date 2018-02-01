FROM stakater/base-alpine:3.7

RUN apk -Uuv add git bash

RUN apk add --no-cache curl

ARG GO_VERSION=1.9.3
ARG GO_FILENAME=go${GO_VERSION}.linux-amd64.tar.gz
ARG GO_URL=https://dl.google.com/go/${GO_FILENAME}

RUN curl -LO --show-error ${GO_URL} && \
    tar -C /usr/local -xzf ${GO_FILENAME} && \
    export PATH=$PATH:/usr/local/go/bin && \
    export GOPATH=/usr/local/go/ && \
    curl https://glide.sh/get | sh