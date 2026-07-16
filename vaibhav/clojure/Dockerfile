FROM clojure:tools-deps-alpine

RUN apk add --no-cache rlwrap

WORKDIR /app

COPY deps.edn ./

COPY src ./src

RUN clj -P

CMD ["clj", "-M","-m", "hello"]
