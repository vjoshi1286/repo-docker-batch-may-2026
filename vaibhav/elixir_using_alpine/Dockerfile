FROM alpine:latest
RUN apk add --no-cache elixir
WORKDIR /app
COPY hello.exs .
CMD ["elixir", "hello.exs" ]
