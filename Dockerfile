FROM nginx
RUN apt update -y
ADD . /usr/share/nginx/html/

