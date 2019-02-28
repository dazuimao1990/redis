#!/bin/sh
[[ $DEBUG ]] && set -x 
echo "set redis config"
fuser /usr/bin/env2file
chmod +x /usr/bin/env2file
fuser /usr/bin/env2file
sleep 3
fuser /usr/bin/env2file
env2file create --path /usr/local/etc/redis/redis.conf --perm 0644 --format redis
redis-server /usr/local/etc/redis/redis.conf
