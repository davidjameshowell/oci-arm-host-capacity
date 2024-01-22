FROM php:8.3.2-cli-bullseye
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer
COPY . /app
WORKDIR /app
RUN apt update && apt install git -y && /usr/local/bin/composer install && rm -rf /var/lib/apt/lists/*
CMD ['php', "./index.php"]
