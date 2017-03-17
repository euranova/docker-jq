FROM alpine

RUN apk update && apk add jq

RUN /bin/sh