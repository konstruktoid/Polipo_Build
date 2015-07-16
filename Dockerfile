# Force autobuild 1436387937

FROM konstruktoid/debian:wheezy

RUN \
    apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install polipo --no-install-recommends && \
    apt-get -y clean && \
    apt-get -y autoremove && \
    useradd --system --no-create-home --user-group --shell /bin/false polipo && \
    rm -rf /var/lib/apt/lists/* \
      /usr/share/doc /usr/share/doc-base \
      /usr/share/man /usr/share/locale /usr/share/zoneinfo

USER polipo
EXPOSE 8123
ENTRYPOINT ["polipo"]
CMD []
