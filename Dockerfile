FROM debian:sid

RUN apt-get update && apt-get install -y quassel-core && rm -rf /var/lib/apt/lists/* && apt-get clean

EXPOSE 4242
VOLUME /var/lib/quassel

ENTRYPOINT ["/usr/bin/quasselcore", \
            "--logfile=/var/log/quassel/core.log", \
            "--loglevel=Info", \
            "--configdir=/var/lib/quassel", \
            "--port=4242"]

