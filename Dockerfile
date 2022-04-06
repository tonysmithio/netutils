FROM alpine:3.15.4
RUN apk update; apk add bind-tools mtr socat tcpdump curl
ADD dumb-init/dumb-init /usr/bin/dumb-init
RUN chmod +x /usr/bin/dumb-init
ENTRYPOINT ["dumb-init", "--"]
CMD ["/bin/sh","-c","tail -f /dev/null"]
