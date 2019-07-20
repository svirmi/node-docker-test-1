## 1 init project
```bash
docker run -it --rm -u $(id -u ${USER}):$(id -g ${USER}) -v ${PWD}:/app node:11 /bin/sh
```

## 2 installation steps

inside docker container run
```bash
cd app && yarn add express
```

## 3  build Docker image
in the host machine run
```bash
docker build -t app-test-with-docker .
```

## 4 spin up container
from the host machine run
```bash
docker run -it -p 9000:3000 app-test-with-docker
```
or in the detached mode, run with **-d** flag
```bash
sudo docker run -d -it -p 9000:3000 app-test-with-docker
```

open http://0.0.0.0:9000/ in browser to see the result


