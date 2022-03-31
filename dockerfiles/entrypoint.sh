#!/bin/sh

mkdir /etc/nginx/sites-enabled && \
ln -s /etc/nginx/sites-available/* /etc/nginx/sites-enabled/
