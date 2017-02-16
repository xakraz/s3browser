FROM php:5.6.30-apache

# Put App files
COPY www /srv/www/s3browser/www

# Enable required Apache modules
RUN a2enmod rewrite ldap authnz_ldap
