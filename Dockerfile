FROM ubuntu:latest

WORKDIR /git-key-grep
ENTRYPOINT [ "/bin/bash" ]

RUN apt-get update && apt-get install -y asciidoc bash git make man

COPY . /git-key-grep/
