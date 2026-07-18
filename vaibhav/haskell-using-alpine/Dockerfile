FROM alpine:latest

RUN apk update && apk add --no-cache ghc musl-dev

WORKDIR /app

RUN echo 'main = putStrLn "Hello World from plain Alpine Linux in Haskell!!"' > hello.hs

RUN ghc hello.hs -o hello

CMD ["./hello"]