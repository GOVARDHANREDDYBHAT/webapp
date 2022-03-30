FROM ubuntu

WORKDIR /.

RUN apt-get update

RUN apt-get install tomcat -y

RUN touch index.html

RUN echo "this app is hosted on ec2 instance using docker" > index.html

COPY index.html /var/www/html/

EXPOSE 80
