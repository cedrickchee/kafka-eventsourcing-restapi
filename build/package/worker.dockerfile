FROM golang:1.13

RUN mkdir -p /go/src/github.com/cedrickchee/kafka-eventsourcing-restapi
ADD . /go/src/github.com/cedrickchee/kafka-eventsourcing-restapi/
WORKDIR /go/src/github.com/cedrickchee/kafka-eventsourcing-restapi

RUN go build -o worker -i cmd/worker/main.go

CMD ["/go/src/github.com/cedrickchee/kafka-eventsourcing-restapi/worker"]
