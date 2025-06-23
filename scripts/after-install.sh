#!/bin/bash
set -e

echo "Clearing old contents..."
rm -rf /var/www/html/*

echo "Copying new build to Nginx folder..."
cp -r * /var/www/html/

echo "Restarting Nginx..."
systemctl restart nginx

echo "Deployment complete."
