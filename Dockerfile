FROM alpine
RUN apk update; apk add bind9-utils iputils-tracepath mtr-tiny netcat socat tcpdump curl python3 python3-pip; \
pip3 install dumb-init;apk cache clean
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
