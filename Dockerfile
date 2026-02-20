FROM ubuntu:latest
LABEL "Author"="Javed"
LABEL "Project"="Cafe-Website"
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install apache2 git -y
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
EXPOSE 80
WORKDIR /var/www/html/
VOLUME /var/log/apache2/
ADD bv-cafe.tar.gz /var/www/html/