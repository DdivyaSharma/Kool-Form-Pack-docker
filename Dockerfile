FROM ubuntu:latest
LABEL "Creator"="Divya"
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get upgrade
RUN apt install apache2 -y
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
WORKDIR /var/www/html
VOLUME /var/log/apache2
ADD nano.tar.gz /var/www/html/
#COPY nano.tar.gz /var/www/html/
