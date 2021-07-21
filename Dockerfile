FROM ubuntu:20.04
RUN apt update; apt full-upgrade -y; apt install -y bind9-utils iputils-tracepath mtr-tiny netcat socat tcpdump wget curl; \
wget https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_amd64.deb; \
dpkg -i dumb-init_*.deb
RUN apt-get clean
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
