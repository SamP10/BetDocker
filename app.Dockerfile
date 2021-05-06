FROM nginx:latest
COPY .env.example /var/www/html/.env
RUN apt-get install composer
RUN cd /var/www/html && \
    composer create-project && \

