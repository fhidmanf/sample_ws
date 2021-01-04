FROM golang:latest

RUN mkdir /build
WORKDIR /build

RUN export GO111MODULE=on
RUN go get github.com/fhidmanf/sample_ws
RUN cd /build && git clone https://github.com/fhidmanf/sample_ws.git

RUN cd /build/sample_ws && go build

EXPOSE 8080

# ENTRYPOINT [ "/build/sample_ws" ]