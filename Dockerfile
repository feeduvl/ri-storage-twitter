
FROM golang:1.18
WORKDIR /go/src/app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN go install -v ./...

EXPOSE 9682
CMD ["app"]
