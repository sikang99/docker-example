ARG GO_VERSION=1.12
FROM golang:${GO_VERSION}

COPY . ./var/app
WORKDIR ./var/app

ENV APP_BUILD_NAME="main"
ENV GO111MODULE="on" \
    GOOS=linux
RUN go build -mod vendor -o ${APP_BUILD_NAME} main.go
RUN chmod +x ${APP_BUILD_NAME}

EXPOSE 3000
ENTRYPOINT ["/main"]
CMD ""

