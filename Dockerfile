FROM konstruktoid/debian:wheezy

RUN \
    useradd --system --no-create-home --user-group --shell /usr/sbin/nologin --home-dir /bin proxy && \
    apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install polipo --no-install-recommends && \
    apt-get -y clean && \
    useradd --system --no-create-home --user-group --shell /bin/false polipo && \
    rm -rf /var/lib/apt/lists/* \
      /usr/share/doc /usr/share/doc-base \
      /usr/share/man /usr/share/locale /usr/share/zoneinfo

USER polipo
EXPOSE 8123
ENTRYPOINT ["polipo"]
CMD []
