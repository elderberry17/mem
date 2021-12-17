FROM ubuntu:latest

ENV TZ=Europe/Kiev
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get install -y \
	apache2

EXPOSE 80

COPY index.html /var/www/html

ENTRYPOINT service apache2 start && bash


