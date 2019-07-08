ARG GOVERSION=1.12

FROM golang:$GOVERSION-alpine

RUN apk add \
    bash \
    git \
    make

RUN go get github.com/onsi/ginkgo/ginkgo

RUN go get github.com/go-delve/delve/cmd/dlv

ENTRYPOINT ["make"]