# Use the official PHP image with Apache
FROM php:8.2-apache

# Enable necessary PHP extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Set working directory inside the container
WORKDIR /var/www/html

# Copy project files into the container
COPY app/ /var/www/html/

# Set file permissions
RUN chown -R www-data:www-data /var/www/html