FROM centos:7
MAINTAINER flaviusfirst3@gmail.com
RUN yum install -y httpd \
 zip\
 unzip\
 wget
WORKDIR /var/www/html/
RUN wget -O photogenic.zip https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
