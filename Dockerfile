FROM alpine
RUN apk update; apk add bind-tools mtr socat tcpdump curl wget dpkg; \
wget https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_amd64.deb; \
dpkg -i dumb-init_*.deb; apk del wget dpkg
ENTRYPOINT ["/usr/bin/dumb-init", "--", "/bin/sh"]
