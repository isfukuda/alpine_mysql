FROM alpine:latest
MAINTAINER isfukuda <s-fukuda@iij.ad.jp>

WORKDIR /app
VOLUME /app

RUN apk add --no-cache mysql mysql-client && rm -f /var/cache/apk/*
RUN addgroup mysql mysql

COPY startup.sh /startup.sh
COPY my.cnf /etc/mysql/my.cnf

EXPOSE 3306
CMD ["/startup.sh"]
