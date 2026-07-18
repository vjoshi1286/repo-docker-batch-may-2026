FROM alpine:latest AS builder

RUN apk update && apk add --no-cache go musl-dev

WORKDIR /app

COPY app/Fibonacci.go .

RUN CGO_ENABLED=0 go build Fibonacci.go

FROM alpine:latest
WORKDIR /app
COPY --from=builder /app/Fibonacci .

ENTRYPOINT ["./Fibonacci"]
