# golang robots.txt

Since haproxy doesn't display/host pages, we can build our own little container to host robots.txt. Anyone can use this container with an haproxy load balancer to present a robots.txt endpoint.

## compile go code

```none
docker run --rm -v "$PWD":/usr/src/robots/:rw -w /usr/src/robots/ golang:1.10-alpine go build -v
```

## build docker image

```none
docker build -t robots .
```

## run docker container

```none
docker run -dt --name=robots --rm -p 8081:8081 robots:latest
```
