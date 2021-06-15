FROM alpine
RUN apk add php
VOLUME $PWD/santander-phpinfo/src/:/app/
