FROM debian:stable-slim

RUN apt-get update \
 && apt-get install -y --no-install-recommends nsd \
 && rm -rf /var/lib/apt/lists/*

CMD ["nsd", "-d", "-c", "/etc/nsd/nsd.conf"]
