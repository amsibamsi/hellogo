FROM golang:1.5

USER nobody

RUN mkdir -p /go/src/github.com/amsibamsi/hellogo
WORKDIR /go/src/github.com/amsibamsi/hellogo

COPY . /go/src/github.com/amsibamsi/hellogo
RUN go-wrapper download && go-wrapper install

CMD ["go-wrapper", "run"]
