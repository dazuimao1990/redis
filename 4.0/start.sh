#!/bin/sh
echo "set redis config"
chmod +x /usr/bin/env2config
env2file create --path /usr/local/etc/redis/redis.conf --format redis
redis-server /usr/local/etc/redis/redis.conf
