
FROM golang:1.18
WORKDIR /go/src/app
COPY . .
RUN go mod init ri-storage-twitter
RUN go mod tidy

RUN go install -v ./...

EXPOSE 9682
CMD ["app"]
