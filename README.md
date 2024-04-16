# Redis Cluster on Docker

## Prerequisite

- Docker
- Bash (or WSL on Windows)

## Guide

To start the cluster, run

```bash
docker compose up -d
```

To start/stop the cluster, run

```bash
docker compose stop
docker compose start
```

To remove the cluster, run

```bash
docker compose down
```

Sometimes, you want to remove cluster data, let run

```bash
rm -rf ./data/redis-*
```


> You can't use RedisInsight or other Redis tools properly while accessing your 
> cluster unless you update your host file with the contents of `/etc/hosts`.
> This way allows you to refer to the nodes as `redis-1`, `redis-2`, and so on.
> Each node also has a port number, such as `7001` for `redis-1`, `7002` for
> `redis-2`, and so on. To connect to a node, you need to specify both the
> hostname and the port number, for example, `redis-1:7001`.
