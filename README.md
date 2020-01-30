# docker-wireguard
```
docker pull watchdg/wireguard
```

## run
```
docker run -d --rm --volume=/etc/wireguard:/etc/wireguard --expose=51820/udp -p=51820:51820/udp --cap-add NET_ADMIN watchdg/wireguard up wg0
```

## create private.key and public.key

### create private.key
```
docker run --rm --entrypoint= watchdg/wireguard wg genkey > private.key
```

### create public.key
```
docker run -i --rm --entrypoint= watchdg/wireguard wg pubkey < private.key > public.key
```
