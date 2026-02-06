#!/bin/sh
set -e

# Create .env file if it doesn't exist
if [ ! -f .env ]; then
    cp .env.example .env
fi

# Run composer install if vendor directory doesn't exist
if [ ! -d vendor ]; then
    composer install
fi

# Generate application key if it hasn't been set
if ! grep -q "^APP_KEY=" .env || grep -q "^APP_KEY=$" .env; then
    php artisan key:generate
fi

# Adjust permissions
find storage bootstrap/cache -type f -exec chmod 644 {} \;
find storage bootstrap/cache -type d -exec chmod 755 {} \;

"$@"
