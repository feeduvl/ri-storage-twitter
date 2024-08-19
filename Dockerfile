
FROM golang:1.15
WORKDIR /go/src/app
COPY . .
RUN go env -w GO111MODULE=auto
RUN go get -d -v ./...
RUN go install -v ./...

EXPOSE 9682
CMD ["app"]
