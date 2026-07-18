FROM alpine:latest

RUN apk add --no-cache ruby

WORKDIR /app

COPY hello.rb .

CMD ["ruby","hello.rb"]
