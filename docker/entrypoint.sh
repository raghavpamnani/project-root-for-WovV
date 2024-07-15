#!/bin/bash
set -e

# Start WordPress
/opt/bitnami/scripts/wordpress/start.sh

# Activate WP Offload Media plugin
wp plugin activate amazon-s3-and-cloudfront --allow-root

exec "$@"
