FROM haskell:latest

WORKDIR /app

COPY . /app

RUN ghc -o greet Main.hs

CMD ["./greet" ]
