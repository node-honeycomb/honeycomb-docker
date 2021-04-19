# honeycomb-server DOCKER 镜像

## Usage

**honeycomb-server**

```bash
$ docker run -d -p 80:80 \
-p 9999:9999 \
-v $PWD/honeycomb/logs:/home/admin/honeycomb/logs \
-v $PWD/honeycomb/run:/home/admin/honeycomb/run \
-v $PWD/honeycomb/conf:/home/admin/honeycomb/conf \
--name honeycomb-server \
node2honeycomb/honeycomb-server:latest
```

**honeycomb-server(带控制台)**
```bash
$ docker run -d -p 80:80 \
-p 9999:9999 \
-v $PWD/honeycomb/logs:/home/admin/honeycomb/logs \
-v $PWD/honeycomb/run:/home/admin/honeycomb/run \
-v $PWD/honeycomb/conf:/home/admin/honeycomb/conf \
--name honeycomb-server-console \
node2honeycomb/honeycomb-server-console:latest
```
