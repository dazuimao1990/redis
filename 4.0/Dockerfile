FROM redis:4-alpine
# china repositories mirror
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
RUN apk update && apk add --no-cahce bash tzdata
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
       echo "Asia/Shanghai" >  /etc/timezone && \
       apk del --no-cache tzdata && \
       wget http://rainbond-pkg.oss-cn-shanghai.aliyuncs.com/env2file -O /usr/bin/env2file
#COPY redis.conf /usr/local/etc/redis/redis.conf
EXPOSE  6379
ENV PORT=6379
ENV REDIS_PASS=password
ENV REDISC_REQUIREPASS=${REDIS_PASS}
ENV REDISC_TIMEOUT=0
ENV REDISC_DBFILENAME=dump.rdb
ENV REDISC_LOGLEVEL=notice
ENV REDISC_TCP-KEEPALIVE=300
ENV REDISC_DATABASES=16
ENV REDISC_SLOWLOG-LOG-SLOWER-THAN=10000
ENV REDISC_SLOWLOG-MAX-LEN=128
ENV REDISC_PROTECTED-MODE=yes
ENV REDISC_MAXCLIENTS=10000
ENV REDISC_NOTIFY-KEYSPACE-EVENTS=Ex
ENV REDISC_LOGFILE=/data/redis.log
VOLUME /data
COPY start.sh /start.sh
RUN chmod +x /start.sh
CMD [ "sh","/start.sh" ]
