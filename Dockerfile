FROM ubuntu:latest
RUN apt update -y
RUN apt install tzdata -y
RUN apt install apache2 -y
RUN apt install php-mysqlnd -y
RUN apt install php -y
RUN rm -rf /var/www/html/*
COPY . /var/www/html
ENV DB_USER=
ENV DB_NAME=
ENV DB_PASSWORD=
ENV DB_HOST=
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
