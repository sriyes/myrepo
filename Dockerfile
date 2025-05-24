FROM ubuntu
LABEL maintainer="srinivasa" version=1.0
RUN apt-get update && apt-get install apache2 curl net-tools wget unzip -y
COPY index.html /var/www/html/
ENTRYPOINT ["apachectl"]
CMD ["-D","FOREGROUND"]

