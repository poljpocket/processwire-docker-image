#!/bin/bash

git clone https://github.com/processwire/processwire.git .
git config --global --add safe.directory /var/www/html
git checkout 390ad61ce3d02bf86079384310772590c097e733

rm -rf .git

chown -R www-data:www-data .

mv htaccess.txt .htaccess
