FROM golang:1.15

WORKDIR /go/src/app
COPY . .
RUN go get -v github.com/gorilla/mux@v1.8.0
RUN go get -t -d -v ./...
RUN go install -v ./...

EXPOSE 9684

CMD ["app"]
