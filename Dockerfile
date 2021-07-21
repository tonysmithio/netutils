FROM alpine
RUN apk update; apk add bind-tools mtr nc socat tcpdump curl python3 py3-pip; \
pip3 install dumb-init;apk cache clean
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
