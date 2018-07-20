FROM alpine:3.7

RUN apk update \
		&& apk add logrotate

COPY rotate.sh /etc/periodic/15min/

CMD ["crond", "-f", "-d", "2"]
