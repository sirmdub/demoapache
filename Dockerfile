FROM httpd:2.4

COPY ./server-status.conf /usr/local/apache2/conf/extra/server-status.conf

RUN echo "Include conf/extra/server-status.conf" >> conf/httpd.conf

RUN apachectl restart

