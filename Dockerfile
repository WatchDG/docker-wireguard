FROM alpine
RUN apk update && apk add --no-cache bash openresolv wireguard-tools
RUN echo $"#!/usr/bin/env bash\n\
wg-quick $1 $2\n\
while true\n\
do\n\
sleep 1\n\
done" > /docker-entrypoint.sh
VOLUME /etc/wireguard
ENTRYPOINT ["/docker-entrypoint.sh"]
