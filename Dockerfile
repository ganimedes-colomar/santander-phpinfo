FROM alpine

RUN apk add php
WORKDIR /app
COPY src .

ENTRYPOINT ["php"]
CMD ["-f", "index.php", "-S", "0.0.0.0:8080"]
