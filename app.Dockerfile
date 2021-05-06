FROM composer:latest
COPY .env.example /var/www/html/.env
RUN cd /var/www/html && \
    composer create-project

