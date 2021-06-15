FROM alpine
RUN apk add php
VOLUME 
ENTRYPOINT ["php"]
CMD ["index.php"]
