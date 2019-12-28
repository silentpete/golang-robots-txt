FROM golang as buildBinary
WORKDIR /go/src/robots
COPY "$PWD"/robots.go .
RUN env GOOS=linux GOARCH=386 go build -v

FROM scratch
COPY --from=buildBinary /go/src/robots/robots /bin/robots
EXPOSE 8081
ENTRYPOINT [ "/bin/robots" ]
