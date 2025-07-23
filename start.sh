#!/bin/sh

# Ensure correct permissions
chmod -R 775 storage
chmod -R 775 bootstrap/cache

# Run database migrations
php artisan migrate --force

# Start the Laravel server
php artisan serve --host=0.0.0.0 --port=8000
