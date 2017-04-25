FROM alpine:3.5

RUN apk add -U asciidoc bash git make

WORKDIR /git-key-grep

COPY . /git-key-grep/

ENTRYPOINT [ "/bin/bash" ]
