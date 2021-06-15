FROM alpine
RUN apk add php
COPY src /app/
ENTRYPOINT ["php"]
CMD ["index.php"]
