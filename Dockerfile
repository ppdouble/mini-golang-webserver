### build stage ###
FROM golang:1.14 as builder
COPY ./server.go /home/server.go
RUN go build \
  -ldflags "-linkmode external -extldflags -static" \
  -a /home/server.go

    
### run stage ###
FROM scratch
COPY --from=builder /go/server /home/server
CMD ["/home/server"]
