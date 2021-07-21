FROM alpine
RUN apk update; apk add bind-tools mtr socat tcpdump curl
ADD dumb-init/dumb-init /usr/bin/dumb-init
RUN chmod +x /usr/bin/dumb-init
ENTRYPOINT ["dumb-init", "--"]
