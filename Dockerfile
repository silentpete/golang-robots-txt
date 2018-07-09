FROM golang as buildBinary
WORKDIR /go/src/app
COPY "$PWD"/robots.go .
RUN env GOOS=linux GOARCH=386 go build -v -o robots robots.go

FROM scratch
WORKDIR /opt
COPY --from=buildBinary /go/src/app/ .
EXPOSE 8081
CMD ["/opt/robots"]
