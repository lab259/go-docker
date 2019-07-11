ARG GOVERSION=1.12

FROM golang:$GOVERSION-alpine

RUN apk add \
    bash \
    ca-certificates \
    dpkg \
    gcc \
    git \
    make \
    musl-dev

RUN go get github.com/onsi/ginkgo/ginkgo

RUN go get github.com/go-delve/delve/cmd/dlv

ENTRYPOINT ["make"]