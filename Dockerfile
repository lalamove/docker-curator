FROM python:3.6-alpine3.6 as builder

RUN apk --no-cache add build-base tar git musl-utils openssl-dev
RUN pip3 install setuptools cx_Freeze==6.0b1 requests-aws4auth

RUN git clone https://github.com/elastic/curator.git
RUN cd curator/ && ln -s /lib/libc.musl-x86_64.so.1 ldd && ln -s /lib /lib64
RUN cd curator/ && git checkout v5.4.0 && pip3 install -r requirements.txt && python3 setup.py build_exe
RUN apk --no-cache upgrade

FROM alpine:3.6
COPY --from=builder curator/build/exe.linux-x86_64-3.6 /curator/
RUN apk --no-cache upgrade
USER nobody:nobody
ENTRYPOINT ["/curator/curator"]
