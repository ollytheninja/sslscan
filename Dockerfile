FROM alpine
LABEL maintainer="Marco Sousa <marcomsousa+docker@gmail.com>"

RUN apk add --no-cache build-base git perl zlib-dev libc6-compat linux-headers && \
    git clone https://github.com/rbsec/sslscan.git && \
    cd sslscan && \
    make static && make install && make clean \
    cd / && rm -rf sslscan && \
    apk del  build-base git perl zlib-dev libc6-compat linux-headers

USER nobody
ENTRYPOINT ["/usr/bin/sslscan"]
