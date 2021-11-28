#Autor Felipe M A B Huinka
FROM nginx
RUN mkdir /var/www
RUN mkdir /var/www/html
COPY ./app/html /var/www
COPY ./conf/nginx/default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80