#Latest Ubuntu base image
FROM ubuntu:latest

LABEL "Creator"="Divya"

# Set noninteractive mode for apt-get
ENV DEBIAN_FRONTEND=noninteractive


RUN apt-get update && apt-get upgrade -y

# Install Apache2
RUN apt-get install -y apache2

#Default command to run Apache in the foreground
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

# Expose port 80 for Web Traffic
EXPOSE 80

# Working directory for the HTML files
WORKDIR /var/www/html

# Volume for Apache logs
VOLUME /var/log/apache2

# Adding custom content here (nano.tar.gz contains necessary files)
ADD nano_content /var/www/html/

# Alternatively, you can use COPY for local files and then unzip it there
# COPY nano_content /var/www/html/
