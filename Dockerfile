FROM alpine:3.10

RUN apk add --no-cache ca-certificates

COPY oidc-plugin-linux /usr/bin/
RUN chmod +x /usr/bin/oidc-plugin-linux

EXPOSE 8080

CMD ["/usr/bin/oidc-plugin-linux"]
