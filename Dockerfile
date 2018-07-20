FROM alpine:3.7

RUN apk update \
		&& apk add logrotate

COPY rotate /etc/periodic/15min/

CMD ["crond", "-f", "-d", "2"]
