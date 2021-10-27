FROM alpine:3.14 AS builder

RUN apk add --no-cache build-base make git cmake

WORKDIR /test-app

ADD . .

RUN cmake -S . -B build-app && cmake --build build-app

FROM alpine:3.14

RUN apk --no-cache add libgcc libstdc++

COPY --from=builder /test-app/build-app/app/greeting_app /usr/bin

CMD ["/usr/bin/greeting_app"]
