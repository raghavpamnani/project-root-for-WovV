FROM bitnami/wordpress:latest

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install WP Offload Media Plugin
RUN cd /opt/bitnami/wordpress/wp-content/plugins && \
    composer require deliciousbrains/wp-amazon-s3-and-cloudfront

# Copy entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
