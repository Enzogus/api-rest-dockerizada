FROM golang AS builder
WORKDIR /app
COPY . .
RUN go mod download

COPY *go .

RUN  go build -o app 
EXPOSE 8080
ENTRYPOINT [ "./app" ]