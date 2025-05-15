FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install -y apache2 apache2-utils && \
    apt clean

COPY . /var/www/html

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
