FROM ubuntu
RUN apt update
RUN apt install nginx -y
COPY public/ /var/www/html
EXPOSE 80
CMD ["nginx","-g","daemon off;"]