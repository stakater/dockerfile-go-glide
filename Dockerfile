FROM golang:1.9.3-alpine3.7

RUN apk -Uuv add git

RUN apk add --no-cache curl

RUN curl https://glide.sh/get | sh