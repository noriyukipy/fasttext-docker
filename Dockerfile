FROM alpine:3.8

WORKDIR /build

RUN wget https://github.com/facebookresearch/fastText/archive/v0.9.1.zip && \
    unzip v0.9.1.zip && \
    apk add --no-cache build-base git && \
    cd fastText-0.9.1 && \
    make

RUN adduser -S fasttext
USER fasttext

WORKDIR /work
ENTRYPOINT ["/build/fastText-0.9.1/fasttext"]

CMD ["help"]
