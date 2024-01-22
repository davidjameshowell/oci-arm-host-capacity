FROM php:8.3.2-cli-bullseye
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer
COPY . /app
WORKDIR /app
RUN /usr/local/bin/composer install
CMD ['php', "./index.php"]
