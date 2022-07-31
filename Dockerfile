FROM ubuntu:18.04
#runs installation of apache2
RUN apt-get update && apt-get install apache2 -y
#change default index page
COPY index.html /var/www/html/index.html
#change ports
COPY ports.conf /etc/apache2/ports.conf
#add user
RUN useradd hillel_devops
#expose non default ports
EXPOSE 8080
#runs apache in container
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]