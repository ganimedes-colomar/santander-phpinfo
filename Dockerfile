FROM alpine
RUN apk add php
COPY src /app/
ENTRYPOINT ["php"]
CMD ["-f", "index.php", "-S", "0.0.0.0:8080"]
