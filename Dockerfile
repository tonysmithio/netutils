FROM alpine
RUN apk update; apk add bind-tools mtr socat tcpdump curl python3 py3-pip; \
pip install wheel;pip install dumb-init
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
