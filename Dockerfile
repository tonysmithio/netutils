FROM alpine
RUN apk update; apk add bind-tools mtr socat tcpdump curl wget; \
wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64; \
chmod +x /usr/local/bin/dumb-init; apk del wget
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
