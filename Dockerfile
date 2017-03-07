# DockerHub base image
#
FROM php:5.6.30-apache

# Put App files
COPY www /srv/www/s3browser/www

# Enable required Apache modules
RUN a2enmod rewrite

# Basic Apache config to serve the S3Browser
COPY etc/apache2/sites-available/000-default.conf \
  /etc/apache2/sites-available/000-default.conf
