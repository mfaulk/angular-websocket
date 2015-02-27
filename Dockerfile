FROM ubuntu:14.04

MAINTAINER Matt Faulkner <matt.faulkner@qadium.com>
MAINTAINER https://github.com/mfaulk/angular-websocket.git

RUN apt-get update
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install -y nodejs

RUN mkdir /app
ADD . /app/

WORKDIR /app
EXPOSE 3000

CMD ["nodejs", "app.js"]