FROM python:3.10-alpine

RUN apk add --no-cache tini
RUN pip install --no-cache-dir rotate-backups

COPY ./entrypoint.sh /

ENTRYPOINT ["tini", "/entrypoint.sh"]
CMD ["rotate-backups", "--dry-run"]
