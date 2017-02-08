FROM alpine

RUN apk update && apk add logrotate

COPY load-and-sleep.sh logrotate.conf run-logrotate clean-completed-pods.sh /

RUN chmod +x logrotate.conf

ENTRYPOINT ["/load-and-sleep.sh"]
