
FROM golang:1.15
WORKDIR /go/src/app
COPY . .
RUN go mod tidy
RUN go clean -modcache
RUN go get -d -v ./...
RUN go install -v ./...

EXPOSE 9682
CMD ["app"]
