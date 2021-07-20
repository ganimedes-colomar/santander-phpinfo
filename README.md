# phpinfo

## docker

```
git clone https://github.com/ganimedes-colomar/santander-phpinfo
cd santander-phpinfo/
git checkout 2021-07-13
docker image build --file Dockerfile --tag santander-phpinfo:test ./
docker network create santander-phpinfo
docker container run --detach --entrypoint /usr/bin/php --env owner=Ganimedes --name santander-phpinfo --network santander-phpinfo --publish 80:8080 --read-only --restart always --user nobody --volume ${PWD}/src/index.php:/src/index.php:ro --workdir /src/ santander-phpinfo:test -f index.php -S 0.0.0.0:8080
```
