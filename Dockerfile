FROM alpine
RUN apk add curl && apk add php

CMD ["-f","index.php","-S","0.0.0.0:8080"]
ENTRYPOINT ["/usr/bin/php"]
ENV owner Ganimedes
EXPOSE "8080"
USER nobody
# /var/lib/docker/volumes/xxx/_data/:/src/
VOLUME /src/index.php
WORKDIR /src/
