FROM debian:wheezy

RUN \
    apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install polipo --no-install-recommends && \
    apt-get -y clean && \
    apt-get -y autoremove && \
    useradd --system --no-create-home --user-group --shell /bin/false polipo && \
    rm -rf /var/lib/apt/lists/*

USER polipo
EXPOSE 8123
ENTRYPOINT ["polipo"]
CMD []
