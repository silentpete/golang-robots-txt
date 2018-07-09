# golang robots.txt

Since haproxy doesn't display/host pages, we can build our own little container to host robots.txt. Anyone can use this container with an haproxy load balancer to present a robots.txt endpoint.

## build docker image

```none
docker build -t robots .
```

## run docker container

```none
docker run -d --rm --name=robots -p 8081:8081 robots:latest
```

## Note

Switching from an alpine container running a golang binary, to a scratch container running a golang binary.

Size
From: 10.8MB To: 5.68MB

Memory
From: 852KiB To: 628KiB
