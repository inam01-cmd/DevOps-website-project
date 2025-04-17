#!/bin/bash

# Update & install nginx if not installed
yum update -y
yum install -y nginx

# Remove default html if exists
rm -rf /usr/share/nginx/html/* || true

# Copy files to web root
cp -r /var/www/html/* /usr/share/nginx/html/
