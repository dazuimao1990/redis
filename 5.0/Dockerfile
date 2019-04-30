FROM redis:5-alpine
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
VOLUME /data
COPY start.sh /start.sh
COPY redis.conf /usr/local/etc/redis/redis.conf
RUN chmod +x /start.sh
CMD [ "sh","/start.sh" ]
