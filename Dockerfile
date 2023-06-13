
FROM golang:1.9
WORKDIR /go/src/app
COPY . .
RUN apt update && apt install ca-certificates libgnutls30 -y
RUN go get -d -v ./...
RUN go install -v ./...

EXPOSE 9682
CMD ["app"]
