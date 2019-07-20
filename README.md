### The main idea - to run and test node.js applications without node.js installed at the host machine
#### All set up with and inside docker containers
#### The host machine is not "polluted" with anything except docker

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

### After adding nodemon to container and volumes mapping , container spin-up looks like this:

```bash
sudo docker run -it -p 9000:3000 -v $(pwd):/app app-test-with-docker
```

Changing code inside current dir affected the same folder in the container


