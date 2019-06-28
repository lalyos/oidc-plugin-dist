FROM alpine:3.10

RUN apk add --no-cache ca-certificates

COPY oidc-plugin-linux /usr/bin/

WORKDIR /root/

EXPOSE 8080

CMD ["/usr/bin/oidc-plugin-linux"]
