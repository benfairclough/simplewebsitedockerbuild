FROM ubuntu:resolute-20251101 
LABEL maintainer="benny.blog.com" 
RUN  apt-get -y update && apt-get -y install nginx 
RUN apt-get -y install git 
RUN git clone https://github.com/benfairclough/SimpleWebsite.git
RUN cp ./SimpleWebsite/index.html /var/www/html/
RUN sed -i 's/.*listen.*:80.*/#listen/g' /etc/nginx/sites-available/default
EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
