FROM python:2.7-alpine

RUN apk --update add --upgrade --no-cache --virtual .build-deps build-base postgresql-dev \
    && apk --update add --upgrade --no-cache bash postgresql-client \
    && pip install pgcli>=1.5 \
    && apk del .build-deps

CMD ["/bin/bash"]
