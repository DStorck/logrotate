FROM alpine

RUN apk update && apk add logrotate

COPY load-and-sleep.sh logrotate.conf run-logrotate check-cron-jobs clean-completed-pods.sh /

RUN chmod 644 logrotate.conf

ENTRYPOINT ["/load-and-sleep.sh"]
