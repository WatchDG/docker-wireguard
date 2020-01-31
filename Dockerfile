FROM alpine
RUN apk update && apk add --no-cache bash openresolv wireguard-tools
RUN echo $'#!/usr/bin/env bash\n\
set -eo pipefail\n\
wg-quick $1 $2\n\
sleep infinity' > /usr/local/bin/docker-entrypoint.sh && \
chmod +x /usr/local/bin/docker-entrypoint.sh
VOLUME /etc/wireguard
ENTRYPOINT ["docker-entrypoint.sh"]
