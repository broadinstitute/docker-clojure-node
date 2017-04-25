FROM clojure:lein-alpine

RUN apk --no-cache add gcc ncurses-dev libc-dev readline-dev make nodejs

WORKDIR /tmp
RUN wget https://github.com/hanslub42/rlwrap/releases/download/v0.43/rlwrap-0.43.tar.gz \
	&& tar -xzvf rlwrap-0.43.tar.gz
WORKDIR /tmp/rlwrap-0.43
RUN ./configure
RUN make install

WORKDIR /
RUN rm -rf /tmp
RUN apk del gcc ncurses-dev libc-dev readline-dev make