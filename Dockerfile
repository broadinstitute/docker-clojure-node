FROM clojure:lein-alpine

RUN apk --no-cache add --update git
RUN apk --no-cache add --update nodejs && npm i -g npm && npm cache clean --force
RUN apk --no-cache add rlwrap --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted
