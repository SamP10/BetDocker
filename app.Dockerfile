FROM composer:latest
COPY .env.example /var/www/html/.env
COPY ./LaravelBet/composer.lock /var/www/html/composer.lock
COPY ./LaravelBet/composer.json /var/www/html/composer.json
RUN cd /var/www/html && \
    composer create-project

