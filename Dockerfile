FROM golang

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && \
    chmod -R 777 "$GOPATH"

RUN go get github.com/oxequa/realize

CMD ["realize", "start", "--no-config", "--legacy", "--run"]
