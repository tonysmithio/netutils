FROM alpine
RUN apk update; apk add bind-tools mtr socat tcpdump curl dpkg wget; \
wget https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_amd64.deb; \
dpkg -i dumb-init_1.2.5_amd64.deb; apk del wget
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
