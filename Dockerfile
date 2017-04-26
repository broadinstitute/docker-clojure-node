FROM clojure:lein-alpine

RUN apk --no-cache add git

RUN apk --no-cache add nodejs && npm update -g && npm cache clean

WORKDIR /tmp
RUN apk --no-cache add gcc ncurses-dev libc-dev readline-dev make \
	&& wget https://github.com/hanslub42/rlwrap/releases/download/v0.43/rlwrap-0.43.tar.gz \
	&& tar -xzvf rlwrap-0.43.tar.gz \
	&& cd /tmp/rlwrap-0.43 \
	&& ./configure \
	&& make install \
	&& cd / \
	&& rm -rf /tmp/* \
	&& apk del gcc ncurses-dev libc-dev readline-dev make