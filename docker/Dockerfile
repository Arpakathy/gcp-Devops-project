# Use the official PHP image as the base image
FROM php:7.4-fpm

# Copy the PHP script
COPY index.php /var/www/html/

# Install Nginx
RUN apt-get update && apt-get install -y nginx

# Copy the Nginx configuration file
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start PHP-FPM and Nginx
CMD ["sh", "-c", "php-fpm -D && nginx -g 'daemon off;'"]
