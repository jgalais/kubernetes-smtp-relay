FROM alpine:3.19
LABEL maintainer "Jonathan Gazeley"

RUN apk add --no-cache postfix \
    && /usr/bin/newaliases

COPY . /

EXPOSE 25

ENTRYPOINT [ "/smtp-relay.sh" ]
