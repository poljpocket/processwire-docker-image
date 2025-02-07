#!/bin/bash

git clone --depth 1 -b "3.0.210" https://github.com/processwire/processwire.git .

rm -rf .git

chown -R www-data:www-data .

mv htaccess.txt .htaccess
