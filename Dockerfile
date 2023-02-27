FROM python:3-alpine

RUN apk add --virtual=.run-deps unzip curl wget ca-certificates perl sed git bash p7zip
WORKDIR /app
COPY . /app

CMD ["/app/update.sh"]
