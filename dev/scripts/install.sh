#!/bin/bash

git clone --depth 1 -b "dev" https://github.com/processwire/processwire.git .

rm -rf .git

chown -R www-data:www-data .

mv htaccess.txt .htaccess
