FROM alpine:3.7
COPY "$PWD"/robots /bin/robots
CMD ["/bin/robots"]
